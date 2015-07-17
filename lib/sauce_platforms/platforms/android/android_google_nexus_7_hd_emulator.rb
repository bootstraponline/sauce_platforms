module Platform
  module Android_google_nexus_7_hd_emulator
    class << self
      def android_google_nexus_7_hd_emulator version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'Google Nexus 7 HD Emulator']
      end

      def v version_string
        android_google_nexus_7_hd_emulator version_string
      end

      def v4_3
        android_google_nexus_7_hd_emulator '4.3'
      end

      def v4_4
        android_google_nexus_7_hd_emulator '4.4'
      end

    end
  end
end
