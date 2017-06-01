require_relative 'android/android_google_nexus_7_hd_emulator'
require_relative 'android/android_samsung_galaxy_s3_emulator'
require_relative 'android/android_samsung_galaxy_s4_emulator'
require_relative 'android/android_amazon_kindle_fire_hd_8_9_emulator'
require_relative 'android/android_google_nexus_7c_emulator'
require_relative 'android/android_lg_nexus_4_emulator'
require_relative 'android/android_android_emulator'
require_relative 'android/android_samsung_galaxy_nexus_emulator'

module Platform
  module Android
    class << self

      def google_nexus_7_hd_emulator
        Android_google_nexus_7_hd_emulator
      end

      def samsung_galaxy_s3_emulator
        Android_samsung_galaxy_s3_emulator
      end

      def samsung_galaxy_s4_emulator
        Android_samsung_galaxy_s4_emulator
      end

      def amazon_kindle_fire_hd_8_9_emulator
        Android_amazon_kindle_fire_hd_8_9_emulator
      end

      def google_nexus_7c_emulator
        Android_google_nexus_7c_emulator
      end

      def lg_nexus_4_emulator
        Android_lg_nexus_4_emulator
      end

      def android_emulator
        Android_android_emulator
      end

      def samsung_galaxy_nexus_emulator
        Android_samsung_galaxy_nexus_emulator
      end

    end
  end
end
