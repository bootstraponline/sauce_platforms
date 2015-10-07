module Platform
  module Windows_2008_safari
    class << self
      def windows_2008_safari version_string
        { browserName: %q(safari),
          platform: %q(Windows 2008),
          version: version_string.to_s }
      end

      def v version_string
        windows_2008_safari version_string
      end

      def v5
        windows_2008_safari '5'
      end

    end
  end
end
