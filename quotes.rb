quotes = ["You owe me a 10 second car", 
	"It's not how you stand by your car, it's how you race your car",
	"Life's simple, you make choices and you don't look back"]

quotes.each do |quote|
	upcase_quote = quote.upcase
	puts upcase_quote
end

number_of_items = quotes.length
puts "There are #{number_of_items} quotes"

first_item = quotes[0]
second_item = quotes[1]
third_item = quotes[2]

puts "The first item is: #{first_item}"
puts "The second item is: #{second_item}"
puts "The third item is: #{third_item}"