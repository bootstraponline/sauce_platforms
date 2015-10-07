module Platform
  module Android_amazon_kindle_fire_hd_8_9_emulator
    class << self
      def android_amazon_kindle_fire_hd_8_9_emulator version_string
        { browserName: %q(Android),
          deviceName: %q(Amazon Kindle Fire HD 8.9 Emulator),
          platformVersion: version_string.to_s,
          platformName: %q(Linux) }
      end

      def v version_string
        android_amazon_kindle_fire_hd_8_9_emulator version_string
      end

      def v4_0
        android_amazon_kindle_fire_hd_8_9_emulator '4.0'
      end

      def v4_4
        android_amazon_kindle_fire_hd_8_9_emulator '4.4'
      end

    end
  end
end
