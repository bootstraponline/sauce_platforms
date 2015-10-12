require_relative 'windows_8/windows_8_internet_explorer'
require_relative 'windows_8/windows_8_firefox'
require_relative 'windows_8/windows_8_chrome'

module Platform
  module Windows_8
    class << self

      def internet_explorer
        Windows_8_internet_explorer
      end

      def firefox
        Windows_8_firefox
      end

      def chrome
        Windows_8_chrome
      end

    end
  end
end
