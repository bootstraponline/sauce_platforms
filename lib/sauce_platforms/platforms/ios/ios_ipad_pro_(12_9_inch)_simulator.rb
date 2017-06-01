module Platform
  module Ios_ipad_pro_(12_9_inch)_simulator
    class << self
      def ios_ipad_pro_(12_9_inch)_simulator version_string
        { browserName: %q(Safari),
          deviceName: %q(),
          platformVersion: version_string.to_s,
          platformName: %q(iOS) }
      end

      def v version_string
        ios_ipad_pro_(12_9_inch)_simulator version_string
      end

      def v10_3
        ios_ipad_pro_(12_9_inch)_simulator '10.3'
      end

      def v10_0
        ios_ipad_pro_(12_9_inch)_simulator '10.0'
      end

      def v10_2
        ios_ipad_pro_(12_9_inch)_simulator '10.2'
      end

    end
  end
end
