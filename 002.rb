# By considering the terms in the Fibonacci sequence whose values do not 
# exceed four million, find the sum of the even-valued terms.

LIMIT = 4000000
fibonacci1 = 1
fibonacci2 = 2
sum = 0
while fibonacci2 <= LIMIT
    fibonacci1, fibonacci2 = fibonacci2, fibonacci2 + fibonacci1
    sum += fibonacci1 if fibonacci1.even?
end
puts sum