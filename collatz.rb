def collatz(n)
  if n != 1
    if (n.even?) ? collatz(n/2) : collatz((n * 3) + 1)
    end
  end
  print "#{n} "
end

def longest_collatz_sequence(n)
    longest_sequence = []
    (1..n).each do |a|
        sequence = [a]
        until sequence.last == 1
            if sequence.last % 2 == 0
                sequence.push(sequence.last/2)
            else
                sequence.push(3 * sequence.last + 1)
            end
        end
        if sequence.length > longest_sequence.length
            longest_sequence = sequence
        end
    end
    longest_sequence[0]
end

puts collatz(3)
puts longest_collatz_sequence(1000000)
