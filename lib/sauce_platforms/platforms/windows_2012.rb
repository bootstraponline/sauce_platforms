require_relative 'windows_2012/windows_2012_internet_explorer'
require_relative 'windows_2012/windows_2012_firefox'
require_relative 'windows_2012/windows_2012_chrome'

module Platform
  module Windows_2012
    class << self

      def internet_explorer
        Windows_2012_internet_explorer
      end

      def firefox
        Windows_2012_firefox
      end

      def chrome
        Windows_2012_chrome
      end

    end
  end
end
