require_relative 'mac_10_6/mac_10_6_firefox'
require_relative 'mac_10_6/mac_10_6_safari'
require_relative 'mac_10_6/mac_10_6_chrome'

module Platform
  module Mac_10_6
    class << self

      def firefox
        Mac_10_6_firefox
      end

      def safari
        Mac_10_6_safari
      end

      def chrome
        Mac_10_6_chrome
      end

    end
  end
end
