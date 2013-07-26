# Solution for Challenge: Recursion vs. Iteration, Benchmarking It. Started 2013-06-05T18:25:19+00:00
require 'benchmark'
def fib_recursive(n)
  if n == 0 || n == 1
    return n
  end
  return fib_recursive(n-1) + fib_recursive(n-2)
end

# fib_recursive(10)


def fib_interative(n)
  var1 = 0
  var2 = 1
  sum = var1 + var2
  (n-2).times do
    var1 = var2
    var2 = sum
    
    sum = var1 + var2
  end
  sum
end

# fib_interative(10)

puts Benchmark.measure {fib_recursive(13)}
puts Benchmark.measure {fib_interative(13)}
