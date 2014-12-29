# Find the sum of all numbers, less than one million, 
# which are palindromic in base 10 and base 2.

sum = 0
(1..1000000).each do |x| 
    sum += x if x.to_s == x.to_s.reverse and x.to_s(2) == x.to_s(2).reverse
end
puts sum