module Platform
  module Windows_10_internet_explorer
    class << self
      def windows_10_internet_explorer version_string
        ['Windows 10', 'internet explorer', version_string.to_s]
      end

      def v version_string
        windows_10_internet_explorer version_string
      end

      def v11
        windows_10_internet_explorer '11'
      end

    end
  end
end
