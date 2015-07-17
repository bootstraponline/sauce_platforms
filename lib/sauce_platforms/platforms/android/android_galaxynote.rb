module Platform
  module Android_galaxynote
    class << self
      def android_galaxynote version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'GalaxyNote']
      end

      def v version_string
        android_galaxynote version_string
      end

      def v4_0
        android_galaxynote '4.0'
      end

      def v4_1
        android_galaxynote '4.1'
      end

    end
  end
end
