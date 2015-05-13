require_relative 'mac_10_10/mac_10_10_ipad'
require_relative 'mac_10_10/mac_10_10_firefox'
require_relative 'mac_10_10/mac_10_10_iphone'
require_relative 'mac_10_10/mac_10_10_safari'
require_relative 'mac_10_10/mac_10_10_chrome'

module Platforms
  module Mac_10_10
    class << self

      def ipad
        Mac_10_10_ipad
      end

      def firefox
        Mac_10_10_firefox
      end

      def iphone
        Mac_10_10_iphone
      end

      def safari
        Mac_10_10_safari
      end

      def chrome
        Mac_10_10_chrome
      end

    end
  end
end
