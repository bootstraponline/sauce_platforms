module Platform
  module Windows_7_internet_explorer
    class << self
      def windows_7_internet_explorer version_string
        { browserName: %q(internet explorer),
          platform: %q(Windows 7),
          version: version_string.to_s }
      end

      def v version_string
        windows_7_internet_explorer version_string
      end

      def v8
        windows_7_internet_explorer '8'
      end

      def v9
        windows_7_internet_explorer '9'
      end

      def v10
        windows_7_internet_explorer '10'
      end

      def v11
        windows_7_internet_explorer '11'
      end

    end
  end
end
