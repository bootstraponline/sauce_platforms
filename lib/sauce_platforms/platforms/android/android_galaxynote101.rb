module Platform
  module Android_galaxynote101
    class << self
      def android_galaxynote101 version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'GalaxyNote101']
      end

      def v version_string
        android_galaxynote101 version_string
      end

      def v4_0
        android_galaxynote101 '4.0'
      end

      def v4_1
        android_galaxynote101 '4.1'
      end

    end
  end
end
