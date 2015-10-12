module Platform
  module Ios_ipad
    class << self
      def ios_ipad version_string
        { browserName: %q(Safari),
          deviceName: %q(iPad Simulator),
          platformVersion: version_string.to_s,
          platformName: %q(iOS) }
      end

      def v version_string
        ios_ipad version_string
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

      def v8_3
        ios_ipad '8.3'
      end

      def v8_4
        ios_ipad '8.4'
      end

      def v9_0
        ios_ipad '9.0'
      end

      def v9_1
        ios_ipad '9.1'
      end

    end
  end
end
