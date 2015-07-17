module Platform
  module Android_onex
    class << self
      def android_onex version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'OneX']
      end

      def v version_string
        android_onex version_string
      end

      def v4_0
        android_onex '4.0'
      end

      def v4_1
        android_onex '4.1'
      end

    end
  end
end
