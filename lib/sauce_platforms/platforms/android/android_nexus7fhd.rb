module Platform
  module Android_nexus7fhd
    class << self
      def android_nexus7fhd version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'Nexus7FHD']
      end

      def v version_string
        android_nexus7fhd version_string
      end

      def v4_3
        android_nexus7fhd '4.3'
      end

      def v4_4
        android_nexus7fhd '4.4'
      end

    end
  end
end
