# Given an integer n,
# return the largest number that contains exactly n digits.

def largest_number(n)
    num = []
    n.times do
        num << 9
    end
    puts num.join('').to_i
end


largest_number(5)
largest_number(10)
largest_number(15)
