module Platform
  module Android_android_emulator
    class << self
      def android_android_emulator version_string
        { browserName: %q(Android),
          deviceName: %q(Android Emulator),
          platformVersion: version_string.to_s,
          platformName: %q(Linux) }
      end

      def v version_string
        android_android_emulator version_string
      end

      def v4_4
        android_android_emulator '4.4'
      end

      def v5_0
        android_android_emulator '5.0'
      end

      def v5_1
        android_android_emulator '5.1'
      end

      def v6_0
        android_android_emulator '6.0'
      end

    end
  end
end
