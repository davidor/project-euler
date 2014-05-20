# Let d(n) be defined as the sum of proper divisors of n 
# (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an 
# amicable pair and each of a and b are called amicable numbers.
# Evaluate the sum of all the amicable numbers under 10000.

def sum_proper_divisors(n)
    (1..(n/2 + 1)).find_all { |x| n%x == 0 }.reduce(:+)
end

def amicable?(n)
    proper_divisors_sum = sum_proper_divisors(n)
    proper_divisors_sum != n and sum_proper_divisors(proper_divisors_sum) == n
end

puts (1...10000).find_all { |x| amicable?(x) }.reduce(:+)
