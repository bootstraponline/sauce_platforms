module Platform
  module Ios_iphone_6s_simulator
    class << self
      def ios_iphone_6s_simulator version_string
        { browserName: %q(Safari),
          deviceName: %q(),
          platformVersion: version_string.to_s,
          platformName: %q(iOS) }
      end

      def v version_string
        ios_iphone_6s_simulator version_string
      end

      def v10_3
        ios_iphone_6s_simulator '10.3'
      end

      def v9_3
        ios_iphone_6s_simulator '9.3'
      end

      def v9_0
        ios_iphone_6s_simulator '9.0'
      end

      def v9_1
        ios_iphone_6s_simulator '9.1'
      end

      def v10_0
        ios_iphone_6s_simulator '10.0'
      end

      def v10_2
        ios_iphone_6s_simulator '10.2'
      end

    end
  end
end
