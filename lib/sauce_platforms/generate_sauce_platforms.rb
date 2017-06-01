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
  # Windows 10 is already called Windows 10 in the API
  pairs = {
    windows_2012_r2: :windows_8_1,
    windows_2012:    :windows_8,
    windows_2008:    :windows_7,
    windows_2003:    :windows_xp
  }
  pairs[windows_server_name.intern] || windows_server_name
end

def windows_platform_alias platform
  case platform # Windows 10 doesn't need an alias
    when 'Windows 2012 R2'
      'Windows 8.1'
    when 'Windows 2012'
      'Windows 8'
    when 'Windows 2008'
      'Windows 7'
    when 'Windows 2003'
      'Windows XP'
    else
      platform
  end
end

def filecase string
  string.downcase.gsub(/[\s|\.]/, '_').gsub(/[^a-zA-Z0-9_]/, '').gsub(/_+/, '_')
end

require 'rubygems'
require 'pry'
require 'sauce_whisk'
require 'fileutils'

=begin
iOS example:
{"short_version"=>"6.1",
 "long_name"=>"iPad",
 "api_name"=>"ipad",
 "long_version"=>"6.1.",
 "device"=>"ipad",
 "latest_stable_version"=>"",
 "automation_backend"=>"webdriver",
 "os"=>"Mac 10.8"},

Android examples:
{"short_version"=>"4.1",
  "long_name"=>"Android",
  "api_name"=>"android",
  "long_version"=>"4.1.",
  "device"=>"android",
  "latest_stable_version"=>"",
  "automation_backend"=>"webdriver",
  "os"=>"Linux"}

{"short_version"=>"4.0",
  "long_name"=>"HTC Evo 3D Emulator",
  "api_name"=>"android",
  "long_version"=>"4.0.4.",
  "device"=>"Evo3D",
  "latest_stable_version"=>"",
  "automation_backend"=>"webdriver",
  "os"=>"Linux"}

Desktop example:
{"short_version"=>"dev",
 "long_name"=>"Google Chrome",
 "api_name"=>"chrome",
 "long_version"=>"dev.",
 "latest_stable_version"=>"dev",
 "automation_backend"=>"webdriver",
 "os"=>"Mac 10.9"},

=end

operating_systems = {}

ios_browsers = %w[ipad iphone].freeze

platforms = SauceWhisk::Sauce.platforms(true)
platforms.each do |platform|
  os      = platform['os']
  browser = platform['api_name']
  version = platform['short_version']

  operating_systems[os] ||= {}

  is_android = os == 'Linux' && browser == 'android'
  is_ios     = os.include?('Mac') && ios_browsers.include?(browser)
  is_mobile  = is_android || is_ios

  if is_mobile
    os     = is_android ? 'android' : 'ios'
    # android/ios have a 'long_name' value which is sent in deviceName desired cap.
    device = platform['long_name']

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

module_name  = 'Platform'

# Clean out entire platform folder before generating code
platform_dir = File.expand_path(File.join(__dir__, 'platforms'))
FileUtils.rm_rf platform_dir
Dir.mkdir platform_dir

# generate platform skeleton files
operating_systems.each do |os, browser_hash|
  os = windows_platform_alias os
  os_file_name  = filecase os
  os_class_name = os_file_name.capitalize

  browser_hash_keys = case os
                        when 'android'
                          browser_hash['android'].keys
                        else
                          browser_hash.keys
                      end

  browsers = browser_hash_keys.map { |e| filecase(e) }

  platform_files << "require_relative 'sauce_platforms/platforms/#{os_file_name}'"
  platform_file_class_pairs << [os_file_name, os_class_name]

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
    is_ios                = ios_browsers.include?(browser)
    is_mobile             = is_android || is_ios
    browser_version_pairs = version_array if is_mobile

    browser_version_pairs.each do |browser, version_array|
      filecase_browser    = filecase(browser)
      os_browser_filename = "#{os_file_name}_#{filecase_browser}"
      File.open(File.join(os_dir, "#{os_browser_filename}.rb"), 'w') do |file|
        os_browser_class_name = "#{os_class_name}_#{filecase_browser}"
        file.puts "module #{module_name}"
        file.puts "  module #{os_browser_class_name}"
        file.puts '    class << self'
        file.puts "      def #{os_browser_filename} version_string"
        caps_join = ",\n" + ' ' * 10
        if is_mobile
          # android/ios must specify a device name
          device_name = browser
          if is_ios
            # set deviceName cap properly for iOS
            device_name = case browser.downcase.strip
                            when 'ipad'
                              'iPad Simulator'
                            when 'iphone'
                              'iPhone Simulator'
                          end
          end


          # browser name.
          browser = is_android ? 'Android' : 'Safari'
          # platform / platformName
          os      = is_android ? 'Linux' : 'iOS'
          # ruby gem reads this as: os, browser, version, {desired caps hash}
          # operating_system, browser_name, device_os_version, device_name
          # Sauce uses modern (selenium 3) desired capabilities for mobile browsers
          caps    = ["browserName: %q(#{browser})",
                     "deviceName: %q(#{device_name})",
                     'platformVersion: version_string.to_s',
                     "platformName: %q(#{os})"].join(caps_join)
          file.puts "        { #{caps} }"
        else
          # Sauce uses legacy desired capabilities for desktop browsers
          caps = ["browserName: %q(#{browser})",
                  "platform: %q(#{os})",
                  'version: version_string.to_s'].join(caps_join)
          file.puts "        { #{caps} }"
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
