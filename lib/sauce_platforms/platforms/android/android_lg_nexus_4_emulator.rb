module Platform
  module Android_lg_nexus_4_emulator
    class << self
      def android_lg_nexus_4_emulator version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'LG Nexus 4 Emulator']
      end

      def v version_string
        android_lg_nexus_4_emulator version_string
      end

      def v4_2
        android_lg_nexus_4_emulator '4.2'
      end

      def v4_3
        android_lg_nexus_4_emulator '4.3'
      end

      def v4_4
        android_lg_nexus_4_emulator '4.4'
      end

    end
  end
end
