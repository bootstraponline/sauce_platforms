module Platform
  module Windows_7_chrome
    class << self
      def windows_7_chrome version_string
        { browserName: %q(chrome),
          platform: %q(Windows 7),
          version: version_string.to_s }
      end

      def v version_string
        windows_7_chrome version_string
      end

      def v26
        windows_7_chrome '26'
      end

      def v27
        windows_7_chrome '27'
      end

      def v28
        windows_7_chrome '28'
      end

      def v29
        windows_7_chrome '29'
      end

      def v30
        windows_7_chrome '30'
      end

      def v31
        windows_7_chrome '31'
      end

      def v32
        windows_7_chrome '32'
      end

      def v33
        windows_7_chrome '33'
      end

      def v34
        windows_7_chrome '34'
      end

      def v35
        windows_7_chrome '35'
      end

      def v36
        windows_7_chrome '36'
      end

      def v37
        windows_7_chrome '37'
      end

      def v38
        windows_7_chrome '38'
      end

      def v39
        windows_7_chrome '39'
      end

      def v40
        windows_7_chrome '40'
      end

      def v41
        windows_7_chrome '41'
      end

      def v42
        windows_7_chrome '42'
      end

      def v43
        windows_7_chrome '43'
      end

      def v44
        windows_7_chrome '44'
      end

      def v45
        windows_7_chrome '45'
      end

      def beta
        windows_7_chrome 'beta'
      end

      def dev
        windows_7_chrome 'dev'
      end

    end
  end
end
