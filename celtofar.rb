puts "Enter temperature in Celcius:"

farenheit = gets.chomp.to_f 

def temperature(farenheit)
	farenheit * 1.8 + 32
end

puts "The temperature is #{temperature(farenheit)} degrees Farenheit"