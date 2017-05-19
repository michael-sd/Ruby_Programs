# Define the unique method that removes duplicates
def unique(integers)
  array = []
  integers.each {|n| array << n if array.include?(n) == false}
  puts array
end

unique([])
unique([5, 2, 1, 3])
unique([1, 5, 2, 0, 2, -3, 1, 10])
