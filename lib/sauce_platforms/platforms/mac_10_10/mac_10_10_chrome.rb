module Platform
  module Mac_10_10_chrome
    class << self
      def mac_10_10_chrome version_string
        { browserName: %q(chrome),
          platform: %q(Mac 10.10),
          version: version_string.to_s }
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

      def v43
        mac_10_10_chrome '43'
      end

      def v44
        mac_10_10_chrome '44'
      end

      def v45
        mac_10_10_chrome '45'
      end

      def v46
        mac_10_10_chrome '46'
      end

      def v47
        mac_10_10_chrome '47'
      end

      def v48
        mac_10_10_chrome '48'
      end

      def v49
        mac_10_10_chrome '49'
      end

      def v50
        mac_10_10_chrome '50'
      end

      def v51
        mac_10_10_chrome '51'
      end

      def v52
        mac_10_10_chrome '52'
      end

      def v53
        mac_10_10_chrome '53'
      end

      def v54
        mac_10_10_chrome '54'
      end

      def v55
        mac_10_10_chrome '55'
      end

      def v56
        mac_10_10_chrome '56'
      end

      def v57
        mac_10_10_chrome '57'
      end

      def v58
        mac_10_10_chrome '58'
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
