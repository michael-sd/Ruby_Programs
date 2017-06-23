def add_two_digits(n)
  sum = n.to_s.chars.map(&:to_i).reduce(:+)
  puts sum
end

add_two_digits(123)
add_two_digits(10002)
add_two_digits(999)
