module Platform
  module Linux_firefox
    class << self
      def linux_firefox version_string
        { browserName: %q(firefox),
          platform: %q(Linux),
          version: version_string.to_s }
      end

      def v version_string
        linux_firefox version_string
      end

      def v3_6
        linux_firefox '3.6'
      end

      def v4
        linux_firefox '4'
      end

      def v5
        linux_firefox '5'
      end

      def v6
        linux_firefox '6'
      end

      def v7
        linux_firefox '7'
      end

      def v8
        linux_firefox '8'
      end

      def v9
        linux_firefox '9'
      end

      def v10
        linux_firefox '10'
      end

      def v11
        linux_firefox '11'
      end

      def v12
        linux_firefox '12'
      end

      def v13
        linux_firefox '13'
      end

      def v14
        linux_firefox '14'
      end

      def v15
        linux_firefox '15'
      end

      def v16
        linux_firefox '16'
      end

      def v17
        linux_firefox '17'
      end

      def v18
        linux_firefox '18'
      end

      def v19
        linux_firefox '19'
      end

      def v20
        linux_firefox '20'
      end

      def v21
        linux_firefox '21'
      end

      def v22
        linux_firefox '22'
      end

      def v23
        linux_firefox '23'
      end

      def v24
        linux_firefox '24'
      end

      def v25
        linux_firefox '25'
      end

      def v26
        linux_firefox '26'
      end

      def v27
        linux_firefox '27'
      end

      def v28
        linux_firefox '28'
      end

      def v29
        linux_firefox '29'
      end

      def v30
        linux_firefox '30'
      end

      def v31
        linux_firefox '31'
      end

      def v32
        linux_firefox '32'
      end

      def v33
        linux_firefox '33'
      end

      def v34
        linux_firefox '34'
      end

      def v35
        linux_firefox '35'
      end

      def v36
        linux_firefox '36'
      end

      def v37
        linux_firefox '37'
      end

      def v38
        linux_firefox '38'
      end

      def v39
        linux_firefox '39'
      end

      def v40
        linux_firefox '40'
      end

      def v41
        linux_firefox '41'
      end

      def v42
        linux_firefox '42'
      end

      def v43
        linux_firefox '43'
      end

      def v44
        linux_firefox '44'
      end

      def v45
        linux_firefox '45'
      end

      def beta
        linux_firefox 'beta'
      end

      def dev
        linux_firefox 'dev'
      end

    end
  end
end
