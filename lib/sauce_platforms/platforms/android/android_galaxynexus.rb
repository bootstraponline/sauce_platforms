module Platform
  module Android_galaxynexus
    class << self
      def android_galaxynexus version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'GalaxyNexus']
      end

      def v version_string
        android_galaxynexus version_string
      end

      def v4_0
        android_galaxynexus '4.0'
      end

      def v4_1
        android_galaxynexus '4.1'
      end

      def v4_2
        android_galaxynexus '4.2'
      end

      def v4_3
        android_galaxynexus '4.3'
      end

      def v4_4
        android_galaxynexus '4.4'
      end

    end
  end
end
