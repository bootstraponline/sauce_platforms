module Platform
  module Android_photonq
    class << self
      def android_photonq version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'PhotonQ']
      end

      def v version_string
        android_photonq version_string
      end

      def v4_0
        android_photonq '4.0'
      end

    end
  end
end
