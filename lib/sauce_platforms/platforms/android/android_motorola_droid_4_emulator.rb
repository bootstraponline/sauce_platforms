module Platform
  module Android_motorola_droid_4_emulator
    class << self
      def android_motorola_droid_4_emulator version_string
        { browserName: %q(Android),
          deviceName: %q(Motorola Droid 4 Emulator),
          platformVersion: version_string.to_s,
          platformName: %q(Linux) }
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
