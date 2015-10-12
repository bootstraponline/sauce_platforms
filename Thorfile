require 'rubygems'
require 'appium_thor'

Appium::Thor::Config.set do
  gem_name 'sauce_platforms'
  github_owner 'bootstraponline'
end

# Must use '::' otherwise Default will point to Thor::Sandbox::Default
# Debug by calling Thor::Base.subclass_files via Pry
#
# https://github.com/erikhuda/thor/issues/484
#
class ::Default < Thor
  desc 'spec', 'Run RSpec tests'
  def spec
    exec 'rspec spec'
  end

  desc 'gen', 'Generate platforms code'
  def gen
    exec 'ruby ./lib/sauce_platforms/generate_sauce_platforms.rb'
  end

  desc 'dump_platforms', 'Dump platforms to platforms.txt'
  def dump_platforms
    require 'json'
    require 'sauce_whisk'
    File.open('platforms.txt', 'w') do |f|
      f.write JSON.pretty_generate SauceWhisk::Sauce.platforms(true)
    end
  end
end
