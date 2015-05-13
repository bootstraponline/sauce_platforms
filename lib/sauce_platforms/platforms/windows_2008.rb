require_relative 'windows_2008/windows_2008_internet_explorer'
require_relative 'windows_2008/windows_2008_opera'
require_relative 'windows_2008/windows_2008_firefox'
require_relative 'windows_2008/windows_2008_safari'
require_relative 'windows_2008/windows_2008_chrome'

module Platforms
  module Windows_2008
    class << self

      def internet_explorer
        Windows_2008_internet_explorer
      end

      def opera
        Windows_2008_opera
      end

      def firefox
        Windows_2008_firefox
      end

      def safari
        Windows_2008_safari
      end

      def chrome
        Windows_2008_chrome
      end

    end
  end
end
