module Platform
  module Mac_10_9_safari
    class << self
      def mac_10_9_safari version_string
        ['Mac 10.9', 'safari', version_string.to_s]
      end

      def v version_string
        mac_10_9_safari version_string
      end

      def v7
        mac_10_9_safari '7'
      end

    end
  end
end
