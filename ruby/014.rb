# Which starting number, under one million, produces the longest Collatz chain?

# This function calculates the collatz length of n. collatz_lengths is a hash
# that contains the values already calculated.
def calculate_collatz_length(n, collatz_lengths)
    return collatz_lengths[n] if collatz_lengths[n] # If it has been calculated before
    return 1 if n == 1
    if n.even? 
        collatz_lengths[n] = 1 + calculate_collatz_length(n/2, collatz_lengths)
    else 
        collatz_lengths[n] = 1 + calculate_collatz_length(3*n + 1, collatz_lengths)
    end
    collatz_lengths[n]
end

# Every time that a new collatz length has to be calculated it is stored in the
# collatz_lengths hash. This way, they need to be calculated just once
collatz_lengths = {} 
(1..10**6).each { |n| calculate_collatz_length(n, collatz_lengths) }
puts collatz_lengths.max_by { |k, v| v }[0]