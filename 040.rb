# An irrational decimal fraction is created by concatenating
# the positive integers. If dn represents the nth digit of the 
# fractional part, find the value of the following expression:
# d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000

d = "0"
(1..Float::INFINITY).each do |x|
    d += x.to_s
    break if d.size > 10**6
end

mult_digits = [d[1], d[10], d[10**2], d[10**3], d[10**4], d[10**5], d[10**6]]
puts mult_digits.map { |digit| digit.to_i }.reduce(:*)