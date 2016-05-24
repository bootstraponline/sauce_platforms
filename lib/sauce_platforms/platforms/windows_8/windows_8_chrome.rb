module Platform
  module Windows_8_chrome
    class << self
      def windows_8_chrome version_string
        { browserName: %q(chrome),
          platform: %q(Windows 8),
          version: version_string.to_s }
      end

      def v version_string
        windows_8_chrome version_string
      end

      def v26
        windows_8_chrome '26'
      end

      def v27
        windows_8_chrome '27'
      end

      def v28
        windows_8_chrome '28'
      end

      def v29
        windows_8_chrome '29'
      end

      def v30
        windows_8_chrome '30'
      end

      def v31
        windows_8_chrome '31'
      end

      def v32
        windows_8_chrome '32'
      end

      def v33
        windows_8_chrome '33'
      end

      def v34
        windows_8_chrome '34'
      end

      def v35
        windows_8_chrome '35'
      end

      def v36
        windows_8_chrome '36'
      end

      def v37
        windows_8_chrome '37'
      end

      def v38
        windows_8_chrome '38'
      end

      def v39
        windows_8_chrome '39'
      end

      def v40
        windows_8_chrome '40'
      end

      def v41
        windows_8_chrome '41'
      end

      def v42
        windows_8_chrome '42'
      end

      def v43
        windows_8_chrome '43'
      end

      def v44
        windows_8_chrome '44'
      end

      def v45
        windows_8_chrome '45'
      end

      def v46
        windows_8_chrome '46'
      end

      def v47
        windows_8_chrome '47'
      end

      def v48
        windows_8_chrome '48'
      end

      def v49
        windows_8_chrome '49'
      end

      def v50
        windows_8_chrome '50'
      end

      def beta
        windows_8_chrome 'beta'
      end

      def dev
        windows_8_chrome 'dev'
      end

    end
  end
end
