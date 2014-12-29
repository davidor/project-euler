# The number 3797 has an interesting property. Being prime itself, 
# it is possible to continuously remove digits from left to right, 
# and remain prime at each stage: 3797, 797, 97, and 7. Similarly 
# we can work from right to left: 3797, 379, 37, and 3.
# Find the sum of the only eleven primes that are both truncatable 
# from left to right and right to left.
# NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

require 'prime'

def is_truncable?(n)
    digits = n.to_s.split("")
    (1..digits.length).each do |x|
        return false if not (digits[0..-x].join("").to_i).prime?
        return false if not (digits.last(x).join("").to_i).prime?
    end
    true
end

truncables = Array.new
n = 10
while (truncables.size < 11)
    truncables.push(n) if is_truncable?(n)
    n += 1
end
puts truncables.reduce(:+)