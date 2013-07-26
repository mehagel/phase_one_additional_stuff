# # Implement an iterative version of the factorial function
def factorial_iterative(n)
  sum = n
 (n-1).downto(1) do |x|
    sum *= x
  end
    p sum
end




#Implement a recursive version of the factorial function
def factorial_recursive(n)
  if n == 1
    return 1
  end
    return n * factorial_recursive(n-1)
end
factorial_iterative(10)
p factorial_recursive(10)
