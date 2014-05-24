# Find the sum of all the numbers that can be written as the sum of fifth powers
# of their digits.

def equals_sum_of_5_powers?(n)
    n == (n.to_s.split("").inject(0) { |sum, digit| sum += digit.to_i**5 })
end

# The upper limit is 6*9^5 = 354294
puts (10..354294).find_all { |n| equals_sum_of_5_powers?(n) }.reduce(:+)