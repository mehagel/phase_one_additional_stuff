class Array

  def my_delete_if

    self.each do |num|
      if yield(self[num])
        self.delete(self[num])
      end
    end
    self
  end

end
p [12,1,2,3,4,5,6].my_delete_if {|element| element.even?}

# [12,1,2,3,4,5,6].length
