module Platform
  module Android_samsung_galaxy_s3_emulator
    class << self
      def android_samsung_galaxy_s3_emulator version_string
        { browserName: %q(Android),
          deviceName: %q(Samsung Galaxy S3 Emulator),
          platformVersion: version_string.to_s,
          platformName: %q(Linux) }
      end

      def v version_string
        android_samsung_galaxy_s3_emulator version_string
      end

      def v4_4
        android_samsung_galaxy_s3_emulator '4.4'
      end

    end
  end
end
