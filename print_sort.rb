def print_and_sort(array)
  output_string = ""
  array.each do |element|
    output_string = output_string + " " + element.to_s
  end
  puts output_string
  array.map! {|x| x.to_s}
  array.sort
end

print_and_sort([1,2,3,"hi"])