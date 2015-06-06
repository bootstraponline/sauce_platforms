require_relative 'mac_10_9/mac_10_9_ipad'
require_relative 'mac_10_9/mac_10_9_firefox'
require_relative 'mac_10_9/mac_10_9_iphone'
require_relative 'mac_10_9/mac_10_9_safari'
require_relative 'mac_10_9/mac_10_9_chrome'

module Platform
  module Mac_10_9
    class << self

      def ipad
        Mac_10_9_ipad
      end

      def firefox
        Mac_10_9_firefox
      end

      def iphone
        Mac_10_9_iphone
      end

      def safari
        Mac_10_9_safari
      end

      def chrome
        Mac_10_9_chrome
      end

    end
  end
end
