module Platform
  module Android_samsung_galaxy_note_emulator
    class << self
      def android_samsung_galaxy_note_emulator version_string
        ['Linux', 'Android', version_string.to_s, deviceName: 'Samsung Galaxy Note Emulator']
      end

      def v version_string
        android_samsung_galaxy_note_emulator version_string
      end

      def v4_0
        android_samsung_galaxy_note_emulator '4.0'
      end

      def v4_1
        android_samsung_galaxy_note_emulator '4.1'
      end

    end
  end
end
