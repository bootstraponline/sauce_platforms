module Platform
  module Android_samsung_galaxy_tab_3_emulator
    class << self
      def android_samsung_galaxy_tab_3_emulator version_string
        ['Linux', 'Android', version_string.to_s, deviceName: 'Samsung Galaxy Tab 3 Emulator']
      end

      def v version_string
        android_samsung_galaxy_tab_3_emulator version_string
      end

      def v4_2
        android_samsung_galaxy_tab_3_emulator '4.2'
      end

    end
  end
end
