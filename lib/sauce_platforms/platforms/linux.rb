require_relative 'linux/linux_opera'
require_relative 'linux/linux_firefox'
require_relative 'linux/linux_chrome'

module Platform
  module Linux
    class << self

      def opera
        Linux_opera
      end

      def firefox
        Linux_firefox
      end

      def chrome
        Linux_chrome
      end

    end
  end
end
