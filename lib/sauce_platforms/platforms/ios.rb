require_relative 'ios/ios_ipad'
require_relative 'ios/ios_iphone'

module Platform
  module Ios
    class << self

      def ipad
        Ios_ipad
      end

      def iphone
        Ios_iphone
      end

    end
  end
end
