module Platforms
  module Mac_10_6_chrome
    class << self
      def mac_10_6_chrome version_string
        ['Mac 10.6', 'chrome', version_string.to_s]
      end

      def v version_string
        mac_10_6_chrome version_string
      end

      def v27
        mac_10_6_chrome '27'
      end

      def v28
        mac_10_6_chrome '28'
      end

      def v31
        mac_10_6_chrome '31'
      end

      def v32
        mac_10_6_chrome '32'
      end

      def v33
        mac_10_6_chrome '33'
      end

      def v34
        mac_10_6_chrome '34'
      end

      def v35
        mac_10_6_chrome '35'
      end

      def v36
        mac_10_6_chrome '36'
      end

      def v37
        mac_10_6_chrome '37'
      end

      def v38
        mac_10_6_chrome '38'
      end

      def v39
        mac_10_6_chrome '39'
      end

      def v40
        mac_10_6_chrome '40'
      end

      def v41
        mac_10_6_chrome '41'
      end

      def v42
        mac_10_6_chrome '42'
      end

      def beta
        mac_10_6_chrome 'beta'
      end

      def dev
        mac_10_6_chrome 'dev'
      end

    end
  end
end
