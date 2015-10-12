module Platform
  module Windows_8_1_chrome
    class << self
      def windows_8_1_chrome version_string
        { browserName: %q(chrome),
          platform: %q(Windows 8.1),
          version: version_string.to_s }
      end

      def v version_string
        windows_8_1_chrome version_string
      end

      def v26
        windows_8_1_chrome '26'
      end

      def v27
        windows_8_1_chrome '27'
      end

      def v28
        windows_8_1_chrome '28'
      end

      def v29
        windows_8_1_chrome '29'
      end

      def v30
        windows_8_1_chrome '30'
      end

      def v31
        windows_8_1_chrome '31'
      end

      def v32
        windows_8_1_chrome '32'
      end

      def v33
        windows_8_1_chrome '33'
      end

      def v34
        windows_8_1_chrome '34'
      end

      def v35
        windows_8_1_chrome '35'
      end

      def v36
        windows_8_1_chrome '36'
      end

      def v37
        windows_8_1_chrome '37'
      end

      def v38
        windows_8_1_chrome '38'
      end

      def v39
        windows_8_1_chrome '39'
      end

      def v40
        windows_8_1_chrome '40'
      end

      def v41
        windows_8_1_chrome '41'
      end

      def v42
        windows_8_1_chrome '42'
      end

      def v43
        windows_8_1_chrome '43'
      end

      def v44
        windows_8_1_chrome '44'
      end

      def v45
        windows_8_1_chrome '45'
      end

      def beta
        windows_8_1_chrome 'beta'
      end

      def dev
        windows_8_1_chrome 'dev'
      end

    end
  end
end
