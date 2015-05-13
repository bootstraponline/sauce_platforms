module Platforms
  module Mac_10_10_iphone
    class << self
      def mac_10_10_iphone version_string
        ['Mac 10.10', 'iphone', version_string.to_s]
      end

      def v version_string
        mac_10_10_iphone version_string
      end

      def v7_1
        mac_10_10_iphone '7.1'
      end

      def v8_0
        mac_10_10_iphone '8.0'
      end

      def v8_1
        mac_10_10_iphone '8.1'
      end

      def v8_2
        mac_10_10_iphone '8.2'
      end

    end
  end
end
