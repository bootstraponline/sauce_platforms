module Platform
  module Mac_10_10_ipad
    class << self
      def mac_10_10_ipad version_string
        ['Mac 10.10', 'ipad', version_string.to_s]
      end

      def v version_string
        mac_10_10_ipad version_string
      end

      def v7_1
        mac_10_10_ipad '7.1'
      end

      def v8_0
        mac_10_10_ipad '8.0'
      end

      def v8_1
        mac_10_10_ipad '8.1'
      end

      def v8_2
        mac_10_10_ipad '8.2'
      end

    end
  end
end
