# Find the first four consecutive integers to have four distinct prime factors. 
# What is the first of these numbers?

require 'prime'

consecutives = first_consecutive = 0
x = 1
while consecutives < 4
	if Prime.prime_division(x).length == 4
		consecutives += 1
		first_consecutive = x if consecutives == 1
	else 
		consecutives = 0
	end
	x += 1
end
puts first_consecutive