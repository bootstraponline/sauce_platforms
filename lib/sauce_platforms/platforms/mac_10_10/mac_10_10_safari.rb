module Platforms
  module Mac_10_10_safari
    class << self
      def mac_10_10_safari version_string
        ['Mac 10.10', 'safari', version_string.to_s]
      end

      def v version_string
        mac_10_10_safari version_string
      end

      def v8
        mac_10_10_safari '8'
      end

    end
  end
end
