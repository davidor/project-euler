# What is the first term in the Fibonacci sequence to contain 1000 digits?

fibonacci1 = fibonacci2 = term = 1
while true
    break if fibonacci1.to_s.length >= 1000
    fibonacci1, fibonacci2 = fibonacci2, fibonacci2 + fibonacci1
    term += 1
end
puts term