require_relative 'android/android_android'

module Platform
  module Android
    class << self

      def android
        Android_android
      end

    end
  end
end
