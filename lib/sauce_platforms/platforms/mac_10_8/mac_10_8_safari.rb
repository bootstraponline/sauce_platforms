module Platform
  module Mac_10_8_safari
    class << self
      def mac_10_8_safari version_string
        { browserName: %q(safari),
          platform: %q(Mac 10.8),
          version: version_string.to_s }
      end

      def v version_string
        mac_10_8_safari version_string
      end

      def v6
        mac_10_8_safari '6'
      end

    end
  end
end
