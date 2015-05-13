require_relative 'windows_2012_r2/windows_2012_r2_internet_explorer'
require_relative 'windows_2012_r2/windows_2012_r2_firefox'
require_relative 'windows_2012_r2/windows_2012_r2_chrome'

module Platforms
  module Windows_2012_r2
    class << self

      def internet_explorer
        Windows_2012_r2_internet_explorer
      end

      def firefox
        Windows_2012_r2_firefox
      end

      def chrome
        Windows_2012_r2_chrome
      end

    end
  end
end
