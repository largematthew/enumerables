module Enumerable
    
   def my_each
      i = 0
       while i < self.length
            yield(self[i])
            i += 1
       end
   end
    
    def my_select
        output = Array.new
        self.my_each do |x|
            if yield(x)
                output.push(x)
            end
        end
        return output
    end

end