def unique(array)
	 one_of = []
	 array.each do |n|
	 	one_of.push(n) unless one_of.include?(n)
	 end
	 return one_of
end

array = [1, 2, 3, 2, 1, 6, 9]
puts unique(array)