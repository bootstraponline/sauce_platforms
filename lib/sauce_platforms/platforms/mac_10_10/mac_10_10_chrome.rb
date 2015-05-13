module Platforms
  module Mac_10_10_chrome
    class << self
      def mac_10_10_chrome version_string
        ['Mac 10.10', 'chrome', version_string.to_s]
      end

      def v version_string
        mac_10_10_chrome version_string
      end

      def v37
        mac_10_10_chrome '37'
      end

      def v38
        mac_10_10_chrome '38'
      end

      def v39
        mac_10_10_chrome '39'
      end

      def v40
        mac_10_10_chrome '40'
      end

      def v41
        mac_10_10_chrome '41'
      end

      def v42
        mac_10_10_chrome '42'
      end

      def beta
        mac_10_10_chrome 'beta'
      end

      def dev
        mac_10_10_chrome 'dev'
      end

    end
  end
end
