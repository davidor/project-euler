#Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000

sum = 0
(1..1000).each do |x|
    sum += x**x
end
puts sum.to_s.split("").last(10).join