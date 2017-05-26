def averages(arr)
  return [] if !arr.is_a? Array
  output = []
  arr.each_index do |i|
    if arr[i+1] != nil
      sum = (arr[i] + arr[i+1])
      sum % 2 == 0? output << sum/2 : output << sum/2.0
    end
  end
  return output
end

averages([2, 2, 2, 2, 2])
averages([2, -2, 2, -2, 2])
averages([1, 3, 5, 1, -10])
averages([])
averages(nil)
