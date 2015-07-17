require_relative 'android/android_android'
require_relative 'android/android_droid4'
require_relative 'android/android_galaxynote'
require_relative 'android/android_galaxytab37'
require_relative 'android/android_galaxynote101'
require_relative 'android/android_nexus7fhd'
require_relative 'android/android_onex'
require_relative 'android/android_photonq'
require_relative 'android/android_nexus4'
require_relative 'android/android_galaxynexus'
require_relative 'android/android_galaxys3'
require_relative 'android/android_galaxys2'
require_relative 'android/android_galaxys4'
require_relative 'android/android_droidrazr'
require_relative 'android/android_nexus7c'
require_relative 'android/android_optimus3d'
require_relative 'android/android_atrixhd'
require_relative 'android/android_evo3d'

module Platform
  module Android
    class << self

      def android
        Android_android
      end

      def droid4
        Android_droid4
      end

      def galaxynote
        Android_galaxynote
      end

      def galaxytab37
        Android_galaxytab37
      end

      def galaxynote101
        Android_galaxynote101
      end

      def nexus7fhd
        Android_nexus7fhd
      end

      def onex
        Android_onex
      end

      def photonq
        Android_photonq
      end

      def nexus4
        Android_nexus4
      end

      def galaxynexus
        Android_galaxynexus
      end

      def galaxys3
        Android_galaxys3
      end

      def galaxys2
        Android_galaxys2
      end

      def galaxys4
        Android_galaxys4
      end

      def droidrazr
        Android_droidrazr
      end

      def nexus7c
        Android_nexus7c
      end

      def optimus3d
        Android_optimus3d
      end

      def atrixhd
        Android_atrixhd
      end

      def evo3d
        Android_evo3d
      end

    end
  end
end
