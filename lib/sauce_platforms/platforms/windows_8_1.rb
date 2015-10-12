require_relative 'windows_8_1/windows_8_1_internet_explorer'
require_relative 'windows_8_1/windows_8_1_firefox'
require_relative 'windows_8_1/windows_8_1_chrome'

module Platform
  module Windows_8_1
    class << self

      def internet_explorer
        Windows_8_1_internet_explorer
      end

      def firefox
        Windows_8_1_firefox
      end

      def chrome
        Windows_8_1_chrome
      end

    end
  end
end
