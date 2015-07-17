module Platform
  module Android_droidrazr
    class << self
      def android_droidrazr version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'DroidRazr']
      end

      def v version_string
        android_droidrazr version_string
      end

      def v4_0
        android_droidrazr '4.0'
      end

      def v4_1
        android_droidrazr '4.1'
      end

    end
  end
end
