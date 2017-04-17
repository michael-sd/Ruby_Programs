def like_cats(answer)

	if answer == "yes"
		return "Mike does too"

	elsif answer == "no"
		return "Dogs are ok"

	else
		return "Make a decision fool!"

	end
end

puts "Do you like cats?"

answer = gets.chomp.downcase

puts like_cats(answer)