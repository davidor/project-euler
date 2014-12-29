# Find the sum of the digits in the number 100!

fact = (1..100).reduce(:*)
puts fact.to_s.split("").map { |digit| digit.to_i }.reduce(:+)