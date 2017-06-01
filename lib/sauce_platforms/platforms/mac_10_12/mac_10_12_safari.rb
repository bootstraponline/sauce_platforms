module Platform
  module Mac_10_12_safari
    class << self
      def mac_10_12_safari version_string
        { browserName: %q(safari),
          platform: %q(Mac 10.12),
          version: version_string.to_s }
      end

      def v version_string
        mac_10_12_safari version_string
      end

      def v10
        mac_10_12_safari '10'
      end

    end
  end
end
