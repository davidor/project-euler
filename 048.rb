#Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000

sum = (1..1000).each.inject(0) { |sum, elem| sum + elem**elem }
puts sum.to_s.split("").last(10).join