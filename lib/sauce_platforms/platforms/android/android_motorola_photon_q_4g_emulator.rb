module Platform
  module Android_motorola_photon_q_4g_emulator
    class << self
      def android_motorola_photon_q_4g_emulator version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'Motorola Photon Q 4G Emulator']
      end

      def v version_string
        android_motorola_photon_q_4g_emulator version_string
      end

      def v4_0
        android_motorola_photon_q_4g_emulator '4.0'
      end

    end
  end
end
