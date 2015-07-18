require_relative 'mac_10_9/mac_10_9_firefox'
require_relative 'mac_10_9/mac_10_9_safari'
require_relative 'mac_10_9/mac_10_9_chrome'

module Platform
  module Mac_10_9
    class << self

      def firefox
        Mac_10_9_firefox
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
