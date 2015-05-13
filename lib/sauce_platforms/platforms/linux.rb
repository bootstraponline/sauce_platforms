require_relative 'linux/linux_opera'
require_relative 'linux/linux_lynx'
require_relative 'linux/linux_firefox'
require_relative 'linux/linux_chrome'
require_relative 'linux/linux_android'

module Platforms
  module Linux
    class << self

      def opera
        Linux_opera
      end

      def lynx
        Linux_lynx
      end

      def firefox
        Linux_firefox
      end

      def chrome
        Linux_chrome
      end

      def android
        Linux_android
      end

    end
  end
end
