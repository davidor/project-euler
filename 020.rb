# Find the sum of the digits in the number 100!

fact = (1..100).reduce(:*)
puts fact.to_s.split("").each.inject(0) { |sum, digit| sum += digit.to_i }