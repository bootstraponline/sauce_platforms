module Platform
  module Windows_7_opera
    class << self
      def windows_7_opera version_string
        { browserName: %q(opera),
          platform: %q(Windows 7),
          version: version_string.to_s }
      end

      def v version_string
        windows_7_opera version_string
      end

      def v11
        windows_7_opera '11'
      end

      def v12
        windows_7_opera '12'
      end

    end
  end
end
