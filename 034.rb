# Find the sum of all numbers which are equal to the sum of the 
# factorial of their digits.
# Note: as 1! = 1 and 2! = 2 are not sums they are not included.

def fact(n)
    (1..n).reduce(:*) || 1
end

# 9!*7 contains seven digits. 9!*8 too. This means that no numbers
# higher than 9!*7 will be part of the solution.
result = 0
precalculated_facts = (0..10).each.map { |x| fact(x) }
(10..fact(9)*7).each do |x|
    sum_fact_digits = 0
    x.to_s.split("").each do |digit|
        sum_fact_digits += precalculated_facts[digit.to_i]
    end
    result += x if sum_fact_digits == x
end
puts result