module Platform
  module Ios_iphone
    class << self
      def ios_iphone version_string
        { browserName: %q(Safari),
          deviceName: %q(iPhone Simulator),
          platformVersion: version_string.to_s,
          platformName: %q(iOS) }
      end

      def v version_string
        ios_iphone version_string
      end

      def v7_0
        ios_iphone '7.0'
      end

      def v7_1
        ios_iphone '7.1'
      end

      def v5_1
        ios_iphone '5.1'
      end

      def v6_0
        ios_iphone '6.0'
      end

      def v6_1
        ios_iphone '6.1'
      end

      def v8_0
        ios_iphone '8.0'
      end

      def v8_1
        ios_iphone '8.1'
      end

      def v8_2
        ios_iphone '8.2'
      end

      def v8_3
        ios_iphone '8.3'
      end

      def v8_4
        ios_iphone '8.4'
      end

      def v9_0
        ios_iphone '9.0'
      end

      def v9_1
        ios_iphone '9.1'
      end

      def v9_2
        ios_iphone '9.2'
      end

    end
  end
end
