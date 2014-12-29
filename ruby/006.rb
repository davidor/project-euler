# Find the difference between the sum of the squares of the first one
# hundred natural numbers and the square of the sum.

sum = sum_of_squares = 0
(1..100).each do |x|
    sum += x
    sum_of_squares += x**2
end
puts sum**2 - sum_of_squares