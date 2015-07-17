# Sauce Labs runs Windows Server for licensing reasons. However the windows
# editions are still referred to by their customer product names. This helper
# converts the sauce labs windows server editions to the more commonly known
# customer aliases.
#
# ex: windows 2003 => windows xp
# @param windows_server_name [String|Symbol] windows server name to alias
#
# @return [String] alias or original name if an alias isn't found.
def windows_alias windows_server_name
  pairs = {
    windows_2012_r2: :windows_8_1,
    windows_2012:    :windows_8,
    windows_2008:    :windows_7,
    windows_2003:    :windows_xp
  }
  pairs[windows_server_name.intern] || windows_server_name
end

def filecase string
  string.downcase.gsub(/[\s|\.]/, '_')
end

require 'rubygems'
require 'pry'
require 'sauce_whisk'

operating_systems = {}

platforms = SauceWhisk::Sauce.platforms(true)
platforms.each do |platform|
  os      = platform['os']
  browser = platform['api_name']
  version = platform['short_version']

  operating_systems[os] ||= {}

  # android has 'device' value which is sent in deviceName desired cap.
  device                = platform['device']
  if os == 'Linux' && browser == 'android'
    os                                     = 'android'
    operating_systems[os]                  ||= {}
    operating_systems[os][browser]         ||= {}
    operating_systems[os][browser][device] ||= []
    operating_systems[os][browser][device] << version
  else
    operating_systems[os][browser] ||= []
    operating_systems[os][browser] << version
  end

end

# platforms.length
# => 509

spec_path = File.join(__dir__, '..', '..', 'spec', 'platforms_spec.rb')
File.delete spec_path if File.exist? spec_path
File.open(spec_path, 'w') do |file|
  file.puts "require_relative 'spec_helper'"
  file.puts
end

platform_files            = []
platform_file_class_pairs = []

module_name = 'Platform'

operating_systems.each do |os, browser_hash|
  os_file_name  = filecase os
  os_class_name = os_file_name.capitalize

  browser_hash_keys = os == 'android' ? browser_hash['android'].keys :
                                        browser_hash.keys

  browsers = browser_hash_keys.map { |e| filecase(e) }

  platform_files << "require_relative 'sauce_platforms/platforms/#{os_file_name}'"
  platform_file_class_pairs << [os_file_name, os_class_name]

  # generate platform skeleton files
  File.open(File.join(__dir__, 'platforms', os_file_name + '.rb'), 'w') do |file|
    browsers.each do |browser|
      file.puts "require_relative '#{os_file_name}/#{os_file_name}_#{browser}'"
    end
    file.puts
    file.puts "module #{module_name}"
    file.puts "  module #{os_class_name}"
    file.puts '    class << self'
    file.puts
    browsers.each do |browser|
      file.puts "      def #{browser}"
      file.puts "        #{os_class_name}_#{browser}"
      file.puts '      end'
      file.puts
    end
    file.puts '    end'
    file.puts '  end'
    file.puts 'end'
  end

  os_dir = File.join(__dir__, 'platforms', os_file_name)
  Dir.mkdir os_dir unless Dir.exist? os_dir

  # track methods for test generation
  methods = []

  # now build version specific files
  browser_hash.each do |browser, version_array|
    browser_version_pairs = [[browser, version_array]]

    is_android            = browser == 'android'
    browser_version_pairs = version_array if is_android

    browser_version_pairs.each do |browser, version_array|
      filecase_browser    = filecase(browser)
      os_browser_filename = "#{os_file_name}_#{filecase_browser}"
      File.open(File.join(os_dir, "#{os_browser_filename}.rb"), 'w') do |file|
        os_browser_class_name = "#{os_class_name}_#{filecase_browser}"
        file.puts "module #{module_name}"
        file.puts "  module #{os_browser_class_name}"
        file.puts '    class << self'
        file.puts "      def #{os_browser_filename} version_string"
        if is_android
          # android must specify a device name
          device_name = browser
          # os for Android is always linux
          # browser name for Android is always android
          browser     = 'android'
          os          = 'Linux'
          # desktop_os, browser_name, android_version, device_name
          file.puts "        ['#{os}', '#{browser}', version_string.to_s, deviceName: '#{device_name}']"
        else

          file.puts "        ['#{os}', '#{browser}', version_string.to_s]"
        end
        file.puts '      end'
        file.puts
        file.puts '      def v version_string'
        file.puts "        #{os_browser_filename} version_string"
        file.puts '      end'
        file.puts

        methods << "#{module_name}.#{windows_alias(os_file_name)}.#{filecase_browser}.v'123'"

        # android has different versions based on deviceName so we must
        # take the unique versions otherwise duplicate methods will be created
        version_array.uniq.each do |version|
          filecase_version = filecase(version)
          # prefix with v if version starts with a number
          # 'dev' and 'beta' don't need to be prefixed
          method_name      = version.match(/^\d/) ? "v#{filecase_version}" : filecase_version

          file.puts "      def #{method_name}"
          file.puts "        #{os_browser_filename} '#{version}'"
          file.puts '      end'
          file.puts

          methods << "#{module_name}.#{windows_alias(os_file_name)}.#{filecase_browser}.#{method_name}"
        end

        file.puts '    end'
        file.puts '  end'
        file.puts 'end'
      end
    end
  end

  # write specs
  File.open(spec_path, 'a') do |file|
    file.puts
    file.puts "describe '#{os_file_name}' do"
    methods.each do |method|
      file.puts "  it '#{method.gsub("'", '"')}' do"
      file.puts "    #{method}"
      file.puts '  end'
      file.puts
    end

    file.puts 'end'
  end
end

# write sauce_platforms.rb
sauce_platforms_path = File.join(__dir__, '..', 'sauce_platforms.rb')
File.open(sauce_platforms_path, 'w') do |file|
  platform_files.sort.each do |platform|
    file.puts platform
  end
  file.puts
  file.puts "module #{module_name}"
  file.puts '  class << self'

  platform_file_class_pairs.each do |file_name, class_name|
    file.puts
    file.puts "    def #{windows_alias(file_name)}"
    file.puts "      #{class_name}"
    file.puts '    end'
  end
  file.puts '  end'
  file.puts 'end'
end
