module Platform
  module Windows_7_safari
    class << self
      def windows_7_safari version_string
        { browserName: %q(safari),
          platform: %q(Windows 7),
          version: version_string.to_s }
      end

      def v version_string
        windows_7_safari version_string
      end

      def v5
        windows_7_safari '5'
      end

    end
  end
end
