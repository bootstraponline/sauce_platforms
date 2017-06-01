module Platform
  module Ios_ipad_pro_9_7_inch_simulator
    class << self
      def ios_ipad_pro_9_7_inch_simulator version_string
        { browserName: %q(Safari),
          deviceName: %q(),
          platformVersion: version_string.to_s,
          platformName: %q(iOS) }
      end

      def v version_string
        ios_ipad_pro_9_7_inch_simulator version_string
      end

      def v10_3
        ios_ipad_pro_9_7_inch_simulator '10.3'
      end

      def v10_0
        ios_ipad_pro_9_7_inch_simulator '10.0'
      end

      def v10_2
        ios_ipad_pro_9_7_inch_simulator '10.2'
      end

    end
  end
end
