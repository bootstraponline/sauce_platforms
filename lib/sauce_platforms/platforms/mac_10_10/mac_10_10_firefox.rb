module Platform
  module Mac_10_10_firefox
    class << self
      def mac_10_10_firefox version_string
        ['Mac 10.10', 'firefox', version_string.to_s]
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

      def beta
        mac_10_10_firefox 'beta'
      end

      def dev
        mac_10_10_firefox 'dev'
      end

    end
  end
end
