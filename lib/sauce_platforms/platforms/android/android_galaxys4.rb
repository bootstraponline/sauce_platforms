module Platform
  module Android_galaxys4
    class << self
      def android_galaxys4 version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'GalaxyS4']
      end

      def v version_string
        android_galaxys4 version_string
      end

      def v4_2
        android_galaxys4 '4.2'
      end

      def v4_3
        android_galaxys4 '4.3'
      end

      def v4_4
        android_galaxys4 '4.4'
      end

    end
  end
end
