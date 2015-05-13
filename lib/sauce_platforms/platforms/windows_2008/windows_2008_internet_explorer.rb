module Platforms
  module Windows_2008_internet_explorer
    class << self
      def windows_2008_internet_explorer version_string
        ['Windows 2008', 'internet explorer', version_string.to_s]
      end

      def v version_string
        windows_2008_internet_explorer version_string
      end

      def v8
        windows_2008_internet_explorer '8'
      end

      def v9
        windows_2008_internet_explorer '9'
      end

      def v10
        windows_2008_internet_explorer '10'
      end

      def v11
        windows_2008_internet_explorer '11'
      end

    end
  end
end
