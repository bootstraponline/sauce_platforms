require_relative 'mac_10_11/mac_10_11_safari'
require_relative 'mac_10_11/mac_10_11_firefox'
require_relative 'mac_10_11/mac_10_11_chrome'

module Platform
  module Mac_10_11
    class << self

      def safari
        Mac_10_11_safari
      end

      def firefox
        Mac_10_11_firefox
      end

      def chrome
        Mac_10_11_chrome
      end

    end
  end
end
