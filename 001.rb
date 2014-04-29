# Find the sum of all the multiples of 3 or 5 below 1000.

sum = 0
(1...1000).each do |x|
    sum += x if (x%3 == 0 or x%5 == 0)
end
puts sum