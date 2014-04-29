# Find the sum of the digits in the number 100!

fact = (1..100).reduce(:*)
sum_of_digits = 0
fact.to_s.split("").each do |digit|
    sum_of_digits += digit.to_i
end
puts sum_of_digits