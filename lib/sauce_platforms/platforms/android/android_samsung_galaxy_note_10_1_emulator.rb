module Platform
  module Android_samsung_galaxy_note_10_1_emulator
    class << self
      def android_samsung_galaxy_note_10_1_emulator version_string
        { browserName: %q(Android),
          deviceName: %q(Samsung Galaxy Note 10.1 Emulator),
          platformVersion: version_string.to_s,
          platformName: %q(Linux) }
      end

      def v version_string
        android_samsung_galaxy_note_10_1_emulator version_string
      end

      def v4_0
        android_samsung_galaxy_note_10_1_emulator '4.0'
      end

      def v4_1
        android_samsung_galaxy_note_10_1_emulator '4.1'
      end

    end
  end
end
