module Platform
  module Android_nexus7c
    class << self
      def android_nexus7c version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'Nexus7C']
      end

      def v version_string
        android_nexus7c version_string
      end

      def v4_1
        android_nexus7c '4.1'
      end

      def v4_2
        android_nexus7c '4.2'
      end

      def v4_3
        android_nexus7c '4.3'
      end

      def v4_4
        android_nexus7c '4.4'
      end

    end
  end
end
