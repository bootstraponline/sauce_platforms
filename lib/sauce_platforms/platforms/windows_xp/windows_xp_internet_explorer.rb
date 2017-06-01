module Platform
  module Windows_xp_internet_explorer
    class << self
      def windows_xp_internet_explorer version_string
        { browserName: %q(internet explorer),
          platform: %q(Windows XP),
          version: version_string.to_s }
      end

      def v version_string
        windows_xp_internet_explorer version_string
      end

      def v7
        windows_xp_internet_explorer '7'
      end

      def v8
        windows_xp_internet_explorer '8'
      end

      def v6
        windows_xp_internet_explorer '6'
      end

    end
  end
end
