require_relative 'ios/ios_iphone_5s_simulator'
require_relative 'ios/ios_iphone_se_simulator'
require_relative 'ios/ios_iphone_6s_simulator'
require_relative 'ios/ios_iphone_6s_plus_simulator'
require_relative 'ios/ios_iphone_7_simulator'
require_relative 'ios/ios_iphone_6_simulator'
require_relative 'ios/ios_iphone_5_simulator'
require_relative 'ios/ios_iphone_7_plus_simulator'
require_relative 'ios/ios_iphone_simulator'
require_relative 'ios/ios_iphone_6_plus_simulator'
require_relative 'ios/ios_iphone_4s_simulator'
require_relative 'ios/ios_ipad_air_simulator'
require_relative 'ios/ios_ipad_simulator'
require_relative 'ios/ios_ipad_pro_12_9_inch_simulator'
require_relative 'ios/ios_ipad_air_2_simulator'
require_relative 'ios/ios_ipad_pro_9_7_inch_simulator'
require_relative 'ios/ios_ipad_pro_simulator'
require_relative 'ios/ios_ipad_2_simulator'
require_relative 'ios/ios_ipad_retina_simulator'

module Platform
  module Ios
    class << self

      def iphone_5s_simulator
        Ios_iphone_5s_simulator
      end

      def iphone_se_simulator
        Ios_iphone_se_simulator
      end

      def iphone_6s_simulator
        Ios_iphone_6s_simulator
      end

      def iphone_6s_plus_simulator
        Ios_iphone_6s_plus_simulator
      end

      def iphone_7_simulator
        Ios_iphone_7_simulator
      end

      def iphone_6_simulator
        Ios_iphone_6_simulator
      end

      def iphone_5_simulator
        Ios_iphone_5_simulator
      end

      def iphone_7_plus_simulator
        Ios_iphone_7_plus_simulator
      end

      def iphone_simulator
        Ios_iphone_simulator
      end

      def iphone_6_plus_simulator
        Ios_iphone_6_plus_simulator
      end

      def iphone_4s_simulator
        Ios_iphone_4s_simulator
      end

      def ipad_air_simulator
        Ios_ipad_air_simulator
      end

      def ipad_simulator
        Ios_ipad_simulator
      end

      def ipad_pro_12_9_inch_simulator
        Ios_ipad_pro_12_9_inch_simulator
      end

      def ipad_air_2_simulator
        Ios_ipad_air_2_simulator
      end

      def ipad_pro_9_7_inch_simulator
        Ios_ipad_pro_9_7_inch_simulator
      end

      def ipad_pro_simulator
        Ios_ipad_pro_simulator
      end

      def ipad_2_simulator
        Ios_ipad_2_simulator
      end

      def ipad_retina_simulator
        Ios_ipad_retina_simulator
      end

    end
  end
end
