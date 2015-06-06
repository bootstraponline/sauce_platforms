module Platform
  module Mac_10_8_ipad
    class << self
      def mac_10_8_ipad version_string
        ['Mac 10.8', 'ipad', version_string.to_s]
      end

      def v version_string
        mac_10_8_ipad version_string
      end

      def v5_1
        mac_10_8_ipad '5.1'
      end

      def v6_0
        mac_10_8_ipad '6.0'
      end

      def v6_1
        mac_10_8_ipad '6.1'
      end

    end
  end
end
