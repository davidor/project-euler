# What is the sum of the digits of the number 2^1000 ?

digits = (2**1000).to_s
sum_of_digits = 0
digits.split("").each do |digit|
    sum_of_digits += digit.to_i
end
puts sum_of_digits