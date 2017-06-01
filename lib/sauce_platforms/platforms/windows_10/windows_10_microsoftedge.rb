module Platform
  module Windows_10_microsoftedge
    class << self
      def windows_10_microsoftedge version_string
        { browserName: %q(microsoftedge),
          platform: %q(Windows 10),
          version: version_string.to_s }
      end

      def v version_string
        windows_10_microsoftedge version_string
      end

      def v13
        windows_10_microsoftedge '13'
      end

      def v14
        windows_10_microsoftedge '14'
      end

    end
  end
end
