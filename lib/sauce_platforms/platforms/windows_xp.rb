require_relative 'windows_xp/windows_xp_opera'
require_relative 'windows_xp/windows_xp_internet_explorer'
require_relative 'windows_xp/windows_xp_firefox'
require_relative 'windows_xp/windows_xp_chrome'

module Platform
  module Windows_xp
    class << self

      def opera
        Windows_xp_opera
      end

      def internet_explorer
        Windows_xp_internet_explorer
      end

      def firefox
        Windows_xp_firefox
      end

      def chrome
        Windows_xp_chrome
      end

    end
  end
end
