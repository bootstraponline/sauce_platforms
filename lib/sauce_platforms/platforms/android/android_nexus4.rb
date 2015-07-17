module Platform
  module Android_nexus4
    class << self
      def android_nexus4 version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'Nexus4']
      end

      def v version_string
        android_nexus4 version_string
      end

      def v4_2
        android_nexus4 '4.2'
      end

      def v4_3
        android_nexus4 '4.3'
      end

      def v4_4
        android_nexus4 '4.4'
      end

    end
  end
end
