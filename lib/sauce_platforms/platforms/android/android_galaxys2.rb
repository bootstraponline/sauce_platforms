module Platform
  module Android_galaxys2
    class << self
      def android_galaxys2 version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'GalaxyS2']
      end

      def v version_string
        android_galaxys2 version_string
      end

      def v4_0
        android_galaxys2 '4.0'
      end

      def v4_1
        android_galaxys2 '4.1'
      end

    end
  end
end
