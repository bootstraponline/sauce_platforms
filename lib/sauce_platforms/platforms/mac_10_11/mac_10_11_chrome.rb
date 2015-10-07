module Platform
  module Mac_10_11_chrome
    class << self
      def mac_10_11_chrome version_string
        { browserName: %q(chrome),
          platform: %q(Mac 10.11),
          version: version_string.to_s }
      end

      def v version_string
        mac_10_11_chrome version_string
      end

      def v27
        mac_10_11_chrome '27'
      end

      def v28
        mac_10_11_chrome '28'
      end

      def v31
        mac_10_11_chrome '31'
      end

      def v32
        mac_10_11_chrome '32'
      end

      def v33
        mac_10_11_chrome '33'
      end

      def v34
        mac_10_11_chrome '34'
      end

      def v35
        mac_10_11_chrome '35'
      end

      def v36
        mac_10_11_chrome '36'
      end

      def v37
        mac_10_11_chrome '37'
      end

      def v38
        mac_10_11_chrome '38'
      end

      def v39
        mac_10_11_chrome '39'
      end

      def v40
        mac_10_11_chrome '40'
      end

      def v41
        mac_10_11_chrome '41'
      end

      def v42
        mac_10_11_chrome '42'
      end

      def v43
        mac_10_11_chrome '43'
      end

      def v44
        mac_10_11_chrome '44'
      end

      def v45
        mac_10_11_chrome '45'
      end

      def beta
        mac_10_11_chrome 'beta'
      end

      def dev
        mac_10_11_chrome 'dev'
      end

    end
  end
end
