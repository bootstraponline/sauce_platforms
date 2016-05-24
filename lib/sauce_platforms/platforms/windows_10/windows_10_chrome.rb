module Platform
  module Windows_10_chrome
    class << self
      def windows_10_chrome version_string
        { browserName: %q(chrome),
          platform: %q(Windows 10),
          version: version_string.to_s }
      end

      def v version_string
        windows_10_chrome version_string
      end

      def v26
        windows_10_chrome '26'
      end

      def v27
        windows_10_chrome '27'
      end

      def v28
        windows_10_chrome '28'
      end

      def v29
        windows_10_chrome '29'
      end

      def v30
        windows_10_chrome '30'
      end

      def v31
        windows_10_chrome '31'
      end

      def v32
        windows_10_chrome '32'
      end

      def v33
        windows_10_chrome '33'
      end

      def v34
        windows_10_chrome '34'
      end

      def v35
        windows_10_chrome '35'
      end

      def v36
        windows_10_chrome '36'
      end

      def v37
        windows_10_chrome '37'
      end

      def v38
        windows_10_chrome '38'
      end

      def v39
        windows_10_chrome '39'
      end

      def v40
        windows_10_chrome '40'
      end

      def v41
        windows_10_chrome '41'
      end

      def v42
        windows_10_chrome '42'
      end

      def v43
        windows_10_chrome '43'
      end

      def v44
        windows_10_chrome '44'
      end

      def v45
        windows_10_chrome '45'
      end

      def v46
        windows_10_chrome '46'
      end

      def v47
        windows_10_chrome '47'
      end

      def v48
        windows_10_chrome '48'
      end

      def v49
        windows_10_chrome '49'
      end

      def v50
        windows_10_chrome '50'
      end

      def beta
        windows_10_chrome 'beta'
      end

      def dev
        windows_10_chrome 'dev'
      end

    end
  end
end
