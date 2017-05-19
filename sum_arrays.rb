# Sum Numbers
def sum(numbers)
  numbers.inject(0, :+)
end

puts sum([])
puts sum([1, 5.2, 4, 0, -1])



# if numbers == []
#   return 0
# else
#   total = numbers.reduce(:+)
# end
# return total.to_f
