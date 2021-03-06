module Platform
  module Windows_8_1_internet_explorer
    class << self
      def windows_8_1_internet_explorer version_string
        { browserName: %q(internet explorer),
          platform: %q(Windows 8.1),
          version: version_string.to_s }
      end

      def v version_string
        windows_8_1_internet_explorer version_string
      end

      def v11
        windows_8_1_internet_explorer '11'
      end

    end
  end
end
