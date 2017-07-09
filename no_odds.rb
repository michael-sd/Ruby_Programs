def no_odds( values )
  return values.each_index.select { |v| v.even?}
end

puts no_odds([0,1,2,3,4,5,6,7,8,9,10])
