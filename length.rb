puts "Enter measurement in inches:"
measurement = gets.chomp


cm = measurement.to_f / 2.54

puts "#{measurement.to_f} inches is equal to #{cm} centimeters"