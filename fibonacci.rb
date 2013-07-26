def fib_recursive(n)
  if n == 0 || n == 1
    return n
  end
  return fib_recursive(n-1) + fib_recursive(n-2)
end

p fib_recursive(10)


def fib_interative(n)
  var1 = 0
  var2 = 1
  sum = var1 + var2
  (n-2).times do
    var1 = var2
    var2 = sum
    
    sum = var1 + var2
  end
  p sum
end
fib_interative(10)
