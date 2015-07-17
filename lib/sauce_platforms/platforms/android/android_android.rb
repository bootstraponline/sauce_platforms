module Platform
  module Android_android
    class << self
      def android_android version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'Android']
      end

      def v version_string
        android_android version_string
      end

      def v4_0
        android_android '4.0'
      end

      def v4_1
        android_android '4.1'
      end

      def v4_2
        android_android '4.2'
      end

      def v4_3
        android_android '4.3'
      end

      def v4_4
        android_android '4.4'
      end

      def v5_0
        android_android '5.0'
      end

      def v5_1
        android_android '5.1'
      end

    end
  end
end
