# Implement an iterative version of the factorial function
def factorial_iterative(n)
factoral_answer = 1
  until n == 0
    factoral_answer=factoral_answer * n
    n -= 1
  end
  factoral_answer

end
p factorial_iterative(5) 
# # Implement a recursive version of the factorial function
# def factorial_recursive(n)
# end
