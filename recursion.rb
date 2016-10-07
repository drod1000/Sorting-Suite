require 'pry'

def factorial(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end

p factorial(2)

def add_up_to(n)
  if n == 1
    1
  else
    n + add_up_to(n-1)
  end
end

p add_up_to(4)

def append( ary, n )
 if n == 0
   ary << 0
 else
  ary << n 
  append(ary,n-1)
 end
end
p append([],2)


def reverse_append(ary, n)
  if n < 0
    return ary
  else
    ary.unshift(n)
    reverse_append(ary,n-1)
  end
end

p reverse_append([],3)

def fib(n)
  if n == 0
  return 0
  elsif n == 1
  return 1
  else
  fib(n-1) + fib(n-2)
  end
end

p fib(10)