module Enumerable
    
   def my_each
      i = 0
       while i < self.length
            yield(self[i])
            i += 1
       end
   end

    def my_map
        output = Array.new
        self.my_each do |x|
                output.push(yield(x))
        end
        return output
    end
end