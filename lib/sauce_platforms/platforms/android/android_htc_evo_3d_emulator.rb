module Platform
  module Android_htc_evo_3d_emulator
    class << self
      def android_htc_evo_3d_emulator version_string
        { browserName: %q(Android),
          deviceName: %q(HTC Evo 3D Emulator),
          platformVersion: version_string.to_s,
          platformName: %q(Linux) }
      end

      def v version_string
        android_htc_evo_3d_emulator version_string
      end

      def v4_0
        android_htc_evo_3d_emulator '4.0'
      end

    end
  end
end
