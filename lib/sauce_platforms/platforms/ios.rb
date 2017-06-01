require_relative 'ios/ios_iphone'
require_relative 'ios/ios_ipad'

module Platform
  module Ios
    class << self

      def iphone
        Ios_iphone
      end

      def ipad
        Ios_ipad
      end

    end
  end
end
