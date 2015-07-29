require_relative 'windows_10/windows_10_internet_explorer'
require_relative 'windows_10/windows_10_firefox'
require_relative 'windows_10/windows_10_chrome'

module Platform
  module Windows_10
    class << self

      def internet_explorer
        Windows_10_internet_explorer
      end

      def firefox
        Windows_10_firefox
      end

      def chrome
        Windows_10_chrome
      end

    end
  end
end
