module Platforms
  module Mac_10_9_ipad
    class << self
      def mac_10_9_ipad version_string
        ['Mac 10.9', 'ipad', version_string.to_s]
      end

      def v version_string
        mac_10_9_ipad version_string
      end

      def v7_0
        mac_10_9_ipad '7.0'
      end

      def v7_1
        mac_10_9_ipad '7.1'
      end

    end
  end
end
