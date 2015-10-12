module Platform
  module Windows_xp_opera
    class << self
      def windows_xp_opera version_string
        { browserName: %q(opera),
          platform: %q(Windows XP),
          version: version_string.to_s }
      end

      def v version_string
        windows_xp_opera version_string
      end

      def v11
        windows_xp_opera '11'
      end

      def v12
        windows_xp_opera '12'
      end

    end
  end
end
