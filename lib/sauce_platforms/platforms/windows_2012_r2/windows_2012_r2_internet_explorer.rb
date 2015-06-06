module Platform
  module Windows_2012_r2_internet_explorer
    class << self
      def windows_2012_r2_internet_explorer version_string
        ['Windows 2012 R2', 'internet explorer', version_string.to_s]
      end

      def v version_string
        windows_2012_r2_internet_explorer version_string
      end

      def v11
        windows_2012_r2_internet_explorer '11'
      end

    end
  end
end
