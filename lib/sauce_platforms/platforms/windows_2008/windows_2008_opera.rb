module Platform
  module Windows_2008_opera
    class << self
      def windows_2008_opera version_string
        { browserName: %q(opera),
          platform: %q(Windows 2008),
          version: version_string.to_s }
      end

      def v version_string
        windows_2008_opera version_string
      end

      def v11
        windows_2008_opera '11'
      end

      def v12
        windows_2008_opera '12'
      end

    end
  end
end
