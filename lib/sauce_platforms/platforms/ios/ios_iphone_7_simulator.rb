module Platform
  module Ios_iphone_7_simulator
    class << self
      def ios_iphone_7_simulator version_string
        { browserName: %q(Safari),
          deviceName: %q(),
          platformVersion: version_string.to_s,
          platformName: %q(iOS) }
      end

      def v version_string
        ios_iphone_7_simulator version_string
      end

      def v10_3
        ios_iphone_7_simulator '10.3'
      end

      def v10_0
        ios_iphone_7_simulator '10.0'
      end

      def v10_2
        ios_iphone_7_simulator '10.2'
      end

    end
  end
end
