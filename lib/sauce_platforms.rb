require_relative 'sauce_platforms/platforms/android'
require_relative 'sauce_platforms/platforms/ios'
require_relative 'sauce_platforms/platforms/linux'
require_relative 'sauce_platforms/platforms/mac_10_10'
require_relative 'sauce_platforms/platforms/mac_10_6'
require_relative 'sauce_platforms/platforms/mac_10_8'
require_relative 'sauce_platforms/platforms/mac_10_9'
require_relative 'sauce_platforms/platforms/windows_2003'
require_relative 'sauce_platforms/platforms/windows_2008'
require_relative 'sauce_platforms/platforms/windows_2012'
require_relative 'sauce_platforms/platforms/windows_2012_r2'

module Platform
  class << self

    def mac_10_6
      Mac_10_6
    end

    def ios
      Ios
    end

    def mac_10_9
      Mac_10_9
    end

    def windows_xp
      Windows_2003
    end

    def mac_10_8
      Mac_10_8
    end

    def windows_8
      Windows_2012
    end

    def linux
      Linux
    end

    def windows_8_1
      Windows_2012_r2
    end

    def windows_7
      Windows_2008
    end

    def mac_10_10
      Mac_10_10
    end

    def android
      Android
    end
  end
end
