module Luhn
  def self.is_valid?(number)
    number_array = number.to_s.chars.map(&:to_i)
    reversed_array = number_array.reverse.map.with_index { |i, index| index % 2 == 0 ? i:i*2}
    less_nine = reversed_array.map.with_index { |i| if i >= 10; i-9 else i end }
    sum_array = less_nine.reduce(:+)

    if sum_array % 10 == 0
      return true
    else
      return false
    end
  end
end
