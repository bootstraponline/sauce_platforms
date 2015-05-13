module Platforms
  module Windows_2003_opera
    class << self
      def windows_2003_opera version_string
        ['Windows 2003', 'opera', version_string.to_s]
      end

      def v version_string
        windows_2003_opera version_string
      end

      def v11
        windows_2003_opera '11'
      end

      def v12
        windows_2003_opera '12'
      end

    end
  end
end
