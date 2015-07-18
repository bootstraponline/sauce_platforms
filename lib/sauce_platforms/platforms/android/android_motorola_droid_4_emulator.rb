module Platform
  module Android_motorola_droid_4_emulator
    class << self
      def android_motorola_droid_4_emulator version_string
        ['Linux', 'Android', version_string.to_s, deviceName: 'Motorola Droid 4 Emulator']
      end

      def v version_string
        android_motorola_droid_4_emulator version_string
      end

      def v4_0
        android_motorola_droid_4_emulator '4.0'
      end

    end
  end
end
