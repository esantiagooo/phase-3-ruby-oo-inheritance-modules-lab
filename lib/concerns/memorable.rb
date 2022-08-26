module Memorable
  module ClassMethods
    def reset_all
        self.all.clear
      end
      def count
        self.all.count
      end
  end
  module InstanceMethods
    def initialize
      self.class.all << self
      # every new song-instance is pushed into class variable
    end
  end
end 