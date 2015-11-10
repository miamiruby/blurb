class Array
	def flatten
		return self.flatten_recursively(self)
	end

    def flatten_recursively(set_of_numbers, n=[])
        set_of_numbers.each do |a|
         if a.is_a?(Array)
            flatten_recursively(a,n)
         else
            n << a
         end
        end
      n
    end

    def monkey_patched?
    	return true
    end
end