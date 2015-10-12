require_relative 'windows_7/windows_7_internet_explorer'
require_relative 'windows_7/windows_7_opera'
require_relative 'windows_7/windows_7_firefox'
require_relative 'windows_7/windows_7_safari'
require_relative 'windows_7/windows_7_chrome'

module Platform
  module Windows_7
    class << self

      def internet_explorer
        Windows_7_internet_explorer
      end

      def opera
        Windows_7_opera
      end

      def firefox
        Windows_7_firefox
      end

      def safari
        Windows_7_safari
      end

      def chrome
        Windows_7_chrome
      end

    end
  end
end
