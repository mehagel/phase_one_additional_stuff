require 'benchmark'

def fibonacci_iterative(n)
  return 0 if n == 0 

  previous_fib = 0
  current_fib = 1
  (n-1).times do
    temp = current_fib
    current_fib += previous_fib
    previous_fib = temp
  end
current_fib
end

# def fibonacci_recursive(n)
#   return 0 if n == 0 
#   return 1 if n == 1
#   fibonacci_recursive(n-1) + fibonacci_recursive(n-2)
# end

def fibonacci_recursive(n, current = 1, previous = 1)
  return 0 if n == 0
  if n != 1
    fibonacci_recursive(n-1, current+previous, current)
  else
    previous
  end
end

n = 1000
Benchmark.bm do |x|
  x.report { n.times do; fibonacci_iterative(20); end }
  x.report { n.times do; fibonacci_recursive(20); end }
end
