require_relative 'windows_2003/windows_2003_opera'
require_relative 'windows_2003/windows_2003_internet_explorer'
require_relative 'windows_2003/windows_2003_firefox'
require_relative 'windows_2003/windows_2003_chrome'

module Platform
  module Windows_2003
    class << self

      def opera
        Windows_2003_opera
      end

      def internet_explorer
        Windows_2003_internet_explorer
      end

      def firefox
        Windows_2003_firefox
      end

      def chrome
        Windows_2003_chrome
      end

    end
  end
end
