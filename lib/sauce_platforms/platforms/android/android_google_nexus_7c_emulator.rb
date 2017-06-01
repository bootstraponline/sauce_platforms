module Platform
  module Android_google_nexus_7c_emulator
    class << self
      def android_google_nexus_7c_emulator version_string
        { browserName: %q(Android),
          deviceName: %q(Google Nexus 7C Emulator),
          platformVersion: version_string.to_s,
          platformName: %q(Linux) }
      end

      def v version_string
        android_google_nexus_7c_emulator version_string
      end

      def v4_4
        android_google_nexus_7c_emulator '4.4'
      end

    end
  end
end
