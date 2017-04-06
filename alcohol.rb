def human_age(age)
	if age < 21
		return "You are not legally allowed to buy alcohol in the US"

	else
		return "You are legally allowed to buy alcohol in the US"
	end
end

puts "What is your age?"

age = gets.chomp.to_f

puts human_age(age)