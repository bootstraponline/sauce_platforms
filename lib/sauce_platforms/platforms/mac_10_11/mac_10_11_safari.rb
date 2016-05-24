module Platform
  module Mac_10_11_safari
    class << self
      def mac_10_11_safari version_string
        { browserName: %q(safari),
          platform: %q(Mac 10.11),
          version: version_string.to_s }
      end

      def v version_string
        mac_10_11_safari version_string
      end

      def v9
        mac_10_11_safari '9'
      end

    end
  end
end
