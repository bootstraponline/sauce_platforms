module Platform
  module Mac_10_9_safari
    class << self
      def mac_10_9_safari version_string
        { browserName: %q(safari),
          platform: %q(Mac 10.9),
          version: version_string.to_s }
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
