require_relative 'android/android_android'
require_relative 'android/android_motorola_droid_4_emulator'
require_relative 'android/android_samsung_galaxy_note_emulator'
require_relative 'android/android_samsung_galaxy_tab_3_emulator'
require_relative 'android/android_samsung_galaxy_note_10_1_emulator'
require_relative 'android/android_google_nexus_7_hd_emulator'
require_relative 'android/android_htc_one_x_emulator'
require_relative 'android/android_motorola_photon_q_4g_emulator'
require_relative 'android/android_lg_nexus_4_emulator'
require_relative 'android/android_samsung_galaxy_nexus_emulator'
require_relative 'android/android_samsung_galaxy_s3_emulator'
require_relative 'android/android_samsung_galaxy_s2_emulator'
require_relative 'android/android_samsung_galaxy_s4_emulator'
require_relative 'android/android_motorola_droid_razr_emulator'
require_relative 'android/android_google_nexus_7c_emulator'
require_relative 'android/android_lg_optimus_3d_emulator'
require_relative 'android/android_motorola_atrix_hd_emulator'
require_relative 'android/android_htc_evo_3d_emulator'

module Platform
  module Android
    class << self

      def android
        Android_android
      end

      def motorola_droid_4_emulator
        Android_motorola_droid_4_emulator
      end

      def samsung_galaxy_note_emulator
        Android_samsung_galaxy_note_emulator
      end

      def samsung_galaxy_tab_3_emulator
        Android_samsung_galaxy_tab_3_emulator
      end

      def samsung_galaxy_note_10_1_emulator
        Android_samsung_galaxy_note_10_1_emulator
      end

      def google_nexus_7_hd_emulator
        Android_google_nexus_7_hd_emulator
      end

      def htc_one_x_emulator
        Android_htc_one_x_emulator
      end

      def motorola_photon_q_4g_emulator
        Android_motorola_photon_q_4g_emulator
      end

      def lg_nexus_4_emulator
        Android_lg_nexus_4_emulator
      end

      def samsung_galaxy_nexus_emulator
        Android_samsung_galaxy_nexus_emulator
      end

      def samsung_galaxy_s3_emulator
        Android_samsung_galaxy_s3_emulator
      end

      def samsung_galaxy_s2_emulator
        Android_samsung_galaxy_s2_emulator
      end

      def samsung_galaxy_s4_emulator
        Android_samsung_galaxy_s4_emulator
      end

      def motorola_droid_razr_emulator
        Android_motorola_droid_razr_emulator
      end

      def google_nexus_7c_emulator
        Android_google_nexus_7c_emulator
      end

      def lg_optimus_3d_emulator
        Android_lg_optimus_3d_emulator
      end

      def motorola_atrix_hd_emulator
        Android_motorola_atrix_hd_emulator
      end

      def htc_evo_3d_emulator
        Android_htc_evo_3d_emulator
      end

    end
  end
end
