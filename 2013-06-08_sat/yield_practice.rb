class Array
  def my_each
    self.length.times do |k|
      yield(self[k])
    end
  end 
end

[2,18,3,4].my_each { |i| puts i }

#[2,18,3,4].my_each
