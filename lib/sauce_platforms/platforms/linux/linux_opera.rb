module Platform
  module Linux_opera
    class << self
      def linux_opera version_string
        { browserName: %q(opera),
          platform: %q(Linux),
          version: version_string.to_s }
      end

      def v version_string
        linux_opera version_string
      end

      def v12
        linux_opera '12'
      end

    end
  end
end
