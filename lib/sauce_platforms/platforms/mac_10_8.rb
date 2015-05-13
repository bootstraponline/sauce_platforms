require_relative 'mac_10_8/mac_10_8_ipad'
require_relative 'mac_10_8/mac_10_8_iphone'
require_relative 'mac_10_8/mac_10_8_safari'
require_relative 'mac_10_8/mac_10_8_chrome'

module Platforms
  module Mac_10_8
    class << self

      def ipad
        Mac_10_8_ipad
      end

      def iphone
        Mac_10_8_iphone
      end

      def safari
        Mac_10_8_safari
      end

      def chrome
        Mac_10_8_chrome
      end

    end
  end
end
