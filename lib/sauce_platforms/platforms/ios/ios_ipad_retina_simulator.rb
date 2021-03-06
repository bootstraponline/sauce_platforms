module Platform
  module Ios_ipad_retina_simulator
    class << self
      def ios_ipad_retina_simulator version_string
        { browserName: %q(Safari),
          deviceName: %q(),
          platformVersion: version_string.to_s,
          platformName: %q(iOS) }
      end

      def v version_string
        ios_ipad_retina_simulator version_string
      end

      def v9_3
        ios_ipad_retina_simulator '9.3'
      end

      def v8_1
        ios_ipad_retina_simulator '8.1'
      end

      def v8_2
        ios_ipad_retina_simulator '8.2'
      end

      def v8_3
        ios_ipad_retina_simulator '8.3'
      end

      def v8_4
        ios_ipad_retina_simulator '8.4'
      end

      def v9_0
        ios_ipad_retina_simulator '9.0'
      end

      def v9_1
        ios_ipad_retina_simulator '9.1'
      end

      def v9_2
        ios_ipad_retina_simulator '9.2'
      end

      def v10_0
        ios_ipad_retina_simulator '10.0'
      end

      def v10_2
        ios_ipad_retina_simulator '10.2'
      end

    end
  end
end
