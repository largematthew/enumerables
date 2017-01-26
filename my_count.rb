module Enumerable
    
   def my_each
      i = 0
       while i < self.length
            yield(self[i])
            i += 1
       end
   end

    def my_count
        output = 0
        self.my_each do |x|
            if yield(x)
                output += 1
            end
        end
        return output
    end
end