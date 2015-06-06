module Platform
  module Linux_android
    class << self
      def linux_android version_string
        ['Linux', 'android', version_string.to_s]
      end

      def v version_string
        linux_android version_string
      end

      def v4_0
        linux_android '4.0'
      end

      def v4_1
        linux_android '4.1'
      end

      def v4_2
        linux_android '4.2'
      end

      def v4_3
        linux_android '4.3'
      end

      def v4_4
        linux_android '4.4'
      end

      def v5_0
        linux_android '5.0'
      end

      def v5_1
        linux_android '5.1'
      end

    end
  end
end
