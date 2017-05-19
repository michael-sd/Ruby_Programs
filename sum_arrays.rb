# Sum Numbers
def sum(numbers)
  numbers.inject(0, :+)
end

puts sum([])
puts sum([1, 5.2, 4, 0, -1])
