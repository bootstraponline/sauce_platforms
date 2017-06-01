require_relative 'mac_10_12/mac_10_12_firefox'
require_relative 'mac_10_12/mac_10_12_safari'
require_relative 'mac_10_12/mac_10_12_chrome'

module Platform
  module Mac_10_12
    class << self

      def firefox
        Mac_10_12_firefox
      end

      def safari
        Mac_10_12_safari
      end

      def chrome
        Mac_10_12_chrome
      end

    end
  end
end
