module Platform
  module Windows_2003_internet_explorer
    class << self
      def windows_2003_internet_explorer version_string
        { browserName: %q(internet explorer),
          platform: %q(Windows 2003),
          version: version_string.to_s }
      end

      def v version_string
        windows_2003_internet_explorer version_string
      end

      def v8
        windows_2003_internet_explorer '8'
      end

      def v7
        windows_2003_internet_explorer '7'
      end

      def v6
        windows_2003_internet_explorer '6'
      end

    end
  end
end
