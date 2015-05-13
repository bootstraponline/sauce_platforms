module Platforms
  module Linux_lynx
    class << self
      def linux_lynx version_string
        ['Linux', 'lynx', version_string.to_s]
      end

      def v version_string
        linux_lynx version_string
      end

      def v2_8_7
        linux_lynx '2.8.7'
      end

    end
  end
end
