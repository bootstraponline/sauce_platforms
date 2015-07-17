module Platform
  module Android_galaxytab37
    class << self
      def android_galaxytab37 version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'GalaxyTab37']
      end

      def v version_string
        android_galaxytab37 version_string
      end

      def v4_2
        android_galaxytab37 '4.2'
      end

    end
  end
end
