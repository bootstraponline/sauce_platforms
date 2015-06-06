module Platform
  module Mac_10_8_iphone
    class << self
      def mac_10_8_iphone version_string
        ['Mac 10.8', 'iphone', version_string.to_s]
      end

      def v version_string
        mac_10_8_iphone version_string
      end

      def v5_1
        mac_10_8_iphone '5.1'
      end

      def v6_0
        mac_10_8_iphone '6.0'
      end

      def v6_1
        mac_10_8_iphone '6.1'
      end

    end
  end
end
