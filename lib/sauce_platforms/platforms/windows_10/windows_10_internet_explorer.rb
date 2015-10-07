module Platform
  module Windows_10_internet_explorer
    class << self
      def windows_10_internet_explorer version_string
        { browserName: %q(internet explorer),
          platform: %q(Windows 10),
          version: version_string.to_s }
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
