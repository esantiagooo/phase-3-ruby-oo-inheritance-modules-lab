module Findable
    module ClassMethods
        def find_by_name(name)
            self.all.detect {|a| a.name == name}
            # were going through all of the instances of a class and returning first element that fits condition.
        end
    end 
end