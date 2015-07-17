module Platform
  module Android_atrixhd
    class << self
      def android_atrixhd version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'AtrixHD']
      end

      def v version_string
        android_atrixhd version_string
      end

      def v4_0
        android_atrixhd '4.0'
      end

      def v4_1
        android_atrixhd '4.1'
      end

    end
  end
end
