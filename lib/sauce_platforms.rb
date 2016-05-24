require_relative 'sauce_platforms/platforms/windows_10'
require_relative 'sauce_platforms/platforms/windows_8_1'
require_relative 'sauce_platforms/platforms/windows_8'
require_relative 'sauce_platforms/platforms/windows_7'
require_relative 'sauce_platforms/platforms/windows_xp'
require_relative 'sauce_platforms/platforms/mac_10_11'
require_relative 'sauce_platforms/platforms/mac_10_10'
require_relative 'sauce_platforms/platforms/mac_10_9'
require_relative 'sauce_platforms/platforms/mac_10_8'
require_relative 'sauce_platforms/platforms/linux'
require_relative 'sauce_platforms/platforms/ios'
require_relative 'sauce_platforms/platforms/android'

module Platform
  class << self

    def windows_10
      Windows_10
    end

    def windows_8_1
      Windows_8_1
    end

    def windows_8
      Windows_8
    end

    def windows_7
      Windows_7
    end

    def windows_xp
      Windows_xp
    end

    def mac_10_11
      Mac_10_11
    end

    def mac_10_10
      Mac_10_10
    end

    def mac_10_9
      Mac_10_9
    end

    def mac_10_8
      Mac_10_8
    end

    def linux
      Linux
    end

    def ios
      Ios
    end

    def android
      Android
    end
  end
end
