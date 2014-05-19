# Which prime, below one-million, can be written as 
# the sum of the most consecutive primes?

require 'prime'

LIMIT = 10**6

primes = Prime.take_while { |prime| prime < LIMIT }
result = longest_sequence = 0
(0...primes.length).each do |x|
    (x...primes.length).each do |y|
        possible_solution = primes[x..y].inject(:+)
        break if possible_solution > LIMIT
        sequence_length = y - x
        if sequence_length > longest_sequence and possible_solution.prime?
            result = possible_solution
            longest_sequence = sequence_length
        end
    end
end
puts result