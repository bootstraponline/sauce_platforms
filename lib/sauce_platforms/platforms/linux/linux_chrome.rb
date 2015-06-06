module Platform
  module Linux_chrome
    class << self
      def linux_chrome version_string
        ['Linux', 'chrome', version_string.to_s]
      end

      def v version_string
        linux_chrome version_string
      end

      def v26
        linux_chrome '26'
      end

      def v27
        linux_chrome '27'
      end

      def v28
        linux_chrome '28'
      end

      def v29
        linux_chrome '29'
      end

      def v30
        linux_chrome '30'
      end

      def v31
        linux_chrome '31'
      end

      def v32
        linux_chrome '32'
      end

      def v33
        linux_chrome '33'
      end

      def v34
        linux_chrome '34'
      end

      def v35
        linux_chrome '35'
      end

      def v36
        linux_chrome '36'
      end

      def v37
        linux_chrome '37'
      end

      def v38
        linux_chrome '38'
      end

      def v39
        linux_chrome '39'
      end

      def v40
        linux_chrome '40'
      end

      def v41
        linux_chrome '41'
      end

      def v42
        linux_chrome '42'
      end

      def v43
        linux_chrome '43'
      end

      def beta
        linux_chrome 'beta'
      end

      def dev
        linux_chrome 'dev'
      end

    end
  end
end
