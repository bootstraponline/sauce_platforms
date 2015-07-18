module Platform
  module Ios_ipad
    class << self
      def ios_ipad version_string
        ['iOS', 'Safari', version_string.to_s, deviceName: 'iPad']
      end

      def v version_string
        ios_ipad version_string
      end

      def v4_3
        ios_ipad '4.3'
      end

      def v5_0
        ios_ipad '5.0'
      end

      def v7_0
        ios_ipad '7.0'
      end

      def v7_1
        ios_ipad '7.1'
      end

      def v5_1
        ios_ipad '5.1'
      end

      def v6_0
        ios_ipad '6.0'
      end

      def v6_1
        ios_ipad '6.1'
      end

      def v8_0
        ios_ipad '8.0'
      end

      def v8_1
        ios_ipad '8.1'
      end

      def v8_2
        ios_ipad '8.2'
      end

    end
  end
end
