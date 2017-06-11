require 'byebug'
def narcissistic?( value )
  arr = value.to_s.chars.map(&:to_i)
  arr.each do |n|
    n**arr.length
  end
end
