module Platform
  module Mac_10_10_firefox
    class << self
      def mac_10_10_firefox version_string
        { browserName: %q(firefox),
          platform: %q(Mac 10.10),
          version: version_string.to_s }
      end

      def v version_string
        mac_10_10_firefox version_string
      end

      def v32
        mac_10_10_firefox '32'
      end

      def v33
        mac_10_10_firefox '33'
      end

      def v34
        mac_10_10_firefox '34'
      end

      def v35
        mac_10_10_firefox '35'
      end

      def v36
        mac_10_10_firefox '36'
      end

      def v37
        mac_10_10_firefox '37'
      end

      def v38
        mac_10_10_firefox '38'
      end

      def v39
        mac_10_10_firefox '39'
      end

      def v40
        mac_10_10_firefox '40'
      end

      def v41
        mac_10_10_firefox '41'
      end

      def v42
        mac_10_10_firefox '42'
      end

      def v43
        mac_10_10_firefox '43'
      end

      def v44
        mac_10_10_firefox '44'
      end

    end
  end
end
