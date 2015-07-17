module Platform
  module Android_optimus3d
    class << self
      def android_optimus3d version_string
        ['Linux', 'android', version_string.to_s, deviceName: 'Optimus3D']
      end

      def v version_string
        android_optimus3d version_string
      end

      def v4_0
        android_optimus3d '4.0'
      end

    end
  end
end
