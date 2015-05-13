module Platforms
  module Windows_2008_safari
    class << self
      def windows_2008_safari version_string
        ['Windows 2008', 'safari', version_string.to_s]
      end

      def v version_string
        windows_2008_safari version_string
      end

      def v5
        windows_2008_safari '5'
      end

    end
  end
end
