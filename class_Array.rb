class Array
  def my_each
    self.length.times do |i|
      yield(self[i])
    end
  end 
end

[1,2,3,4].my_each { |i| puts i }
