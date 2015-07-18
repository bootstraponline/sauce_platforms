module Platform
  module Android_motorola_atrix_hd_emulator
    class << self
      def android_motorola_atrix_hd_emulator version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'Motorola Atrix HD Emulator']
      end

      def v version_string
        android_motorola_atrix_hd_emulator version_string
      end

      def v4_0
        android_motorola_atrix_hd_emulator '4.0'
      end

      def v4_1
        android_motorola_atrix_hd_emulator '4.1'
      end

    end
  end
end