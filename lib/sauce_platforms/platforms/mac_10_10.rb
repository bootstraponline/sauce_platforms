require_relative 'mac_10_10/mac_10_10_firefox'
require_relative 'mac_10_10/mac_10_10_safari'
require_relative 'mac_10_10/mac_10_10_chrome'

module Platform
  module Mac_10_10
    class << self

      def firefox
        Mac_10_10_firefox
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
