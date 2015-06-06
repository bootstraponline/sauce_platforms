module Platform
  module Mac_10_6_safari
    class << self
      def mac_10_6_safari version_string
        ['Mac 10.6', 'safari', version_string.to_s]
      end

      def v version_string
        mac_10_6_safari version_string
      end

      def v5
        mac_10_6_safari '5'
      end

    end
  end
end
