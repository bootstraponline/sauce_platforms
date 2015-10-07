module Platform
  module Windows_2012_firefox
    class << self
      def windows_2012_firefox version_string
        { browserName: %q(firefox),
          platform: %q(Windows 2012),
          version: version_string.to_s }
      end

      def v version_string
        windows_2012_firefox version_string
      end

      def v3_0
        windows_2012_firefox '3.0'
      end

      def v3_5
        windows_2012_firefox '3.5'
      end

      def v3_6
        windows_2012_firefox '3.6'
      end

      def v4
        windows_2012_firefox '4'
      end

      def v5
        windows_2012_firefox '5'
      end

      def v6
        windows_2012_firefox '6'
      end

      def v7
        windows_2012_firefox '7'
      end

      def v8
        windows_2012_firefox '8'
      end

      def v9
        windows_2012_firefox '9'
      end

      def v10
        windows_2012_firefox '10'
      end

      def v11
        windows_2012_firefox '11'
      end

      def v12
        windows_2012_firefox '12'
      end

      def v13
        windows_2012_firefox '13'
      end

      def v14
        windows_2012_firefox '14'
      end

      def v15
        windows_2012_firefox '15'
      end

      def v16
        windows_2012_firefox '16'
      end

      def v17
        windows_2012_firefox '17'
      end

      def v18
        windows_2012_firefox '18'
      end

      def v19
        windows_2012_firefox '19'
      end

      def v20
        windows_2012_firefox '20'
      end

      def v21
        windows_2012_firefox '21'
      end

      def v22
        windows_2012_firefox '22'
      end

      def v23
        windows_2012_firefox '23'
      end

      def v24
        windows_2012_firefox '24'
      end

      def v25
        windows_2012_firefox '25'
      end

      def v26
        windows_2012_firefox '26'
      end

      def v27
        windows_2012_firefox '27'
      end

      def v28
        windows_2012_firefox '28'
      end

      def v29
        windows_2012_firefox '29'
      end

      def v30
        windows_2012_firefox '30'
      end

      def v31
        windows_2012_firefox '31'
      end

      def v32
        windows_2012_firefox '32'
      end

      def v33
        windows_2012_firefox '33'
      end

      def v34
        windows_2012_firefox '34'
      end

      def v35
        windows_2012_firefox '35'
      end

      def v36
        windows_2012_firefox '36'
      end

      def v37
        windows_2012_firefox '37'
      end

      def v38
        windows_2012_firefox '38'
      end

      def v39
        windows_2012_firefox '39'
      end

      def v40
        windows_2012_firefox '40'
      end

      def v41
        windows_2012_firefox '41'
      end

      def beta
        windows_2012_firefox 'beta'
      end

      def dev
        windows_2012_firefox 'dev'
      end

    end
  end
end
