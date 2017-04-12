require 'benchmark'

def recursive_fib(num)
  return num if num <= 1
  recursive_fib(num - 1) + recursive_fib(num -2)
end

def iterative_fib(num)
  a = 0
  b = 1
  num.times do
    c = a         # c=a=0   # c=a=1  # c=a=1  # c=a=2  # c=a=3
    a = b         # a=b=1   # a=b=1  # a=b=2  # a=b=3  # a=b=5
    b = b + c     # b=1+0   # b=1+1  # b=2+1  # b=3+2  # b=5+3
  end
  return a        # 0       # 1      # 1      # 2      # 3
end

puts "Recursive: #{recursive_fib(35)}"
puts "Iteration: #{iterative_fib(35)}"

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end
