module Platform
  module Android_evo3d
    class << self
      def android_evo3d version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'Evo3D']
      end

      def v version_string
        android_evo3d version_string
      end

      def v4_0
        android_evo3d '4.0'
      end

    end
  end
end
