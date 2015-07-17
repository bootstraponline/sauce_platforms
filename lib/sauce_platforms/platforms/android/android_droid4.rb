module Platform
  module Android_droid4
    class << self
      def android_droid4 version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'Droid4']
      end

      def v version_string
        android_droid4 version_string
      end

      def v4_0
        android_droid4 '4.0'
      end

    end
  end
end
