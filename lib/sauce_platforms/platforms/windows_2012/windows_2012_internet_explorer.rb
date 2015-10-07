module Platform
  module Windows_2012_internet_explorer
    class << self
      def windows_2012_internet_explorer version_string
        { browserName: %q(internet explorer),
          platform: %q(Windows 2012),
          version: version_string.to_s }
      end

      def v version_string
        windows_2012_internet_explorer version_string
      end

      def v10
        windows_2012_internet_explorer '10'
      end

    end
  end
end
