puts "How many numbers are in this round?"
n = gets.chomp.to_i

(1..n).each do |num|

	if num % 5 == 0 && num % 3 == 0
		puts "Foobar"

	elsif num % 3 == 0
		puts "Foo"

	elsif num % 5 == 0
		puts "Bar"

	else
		puts num
	end
end