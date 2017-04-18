def ordinal(number)

	last_digit = number % 10
	second_last_digit = number % 100

	if second_last_digit >= 1 && second_last_digit <= 13
		return "#{number}th"

	elsif last_digit == 1
		return "#{number}st"

	elsif last_digit == 2
		return "#{number}nd"

	elsif last_digit == 3
		return "#{number}rd"

	else
		return "#{number}th"
	end
end


puts "Enter a number:"

number = gets.chomp.to_i

puts ordinal(number)