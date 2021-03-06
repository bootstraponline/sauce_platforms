module Platform
  module Android_lg_nexus_4_emulator
    class << self
      def android_lg_nexus_4_emulator version_string
        { browserName: %q(Android),
          deviceName: %q(LG Nexus 4 Emulator),
          platformVersion: version_string.to_s,
          platformName: %q(Linux) }
      end

      def v version_string
        android_lg_nexus_4_emulator version_string
      end

      def v4_4
        android_lg_nexus_4_emulator '4.4'
      end

    end
  end
end
