# Considering quadratics of the form: n² + an + b, where |a| < 1000 
# and |b| < 1000, find the product of the coefficients, a and b, 
# for the quadratic expression that produces the maximum number of 
# primes for consecutive values of n, starting with n = 0.

require 'prime'

def calculate_max_consecutive_primes(a, b, primes)
    consecutives = 0
    non_prime_found = false
    n = 0
    while (not non_prime_found)
        if primes.include?(n**2 + a*n + b)
            consecutives += 1
        else
            return consecutives
        end
        n += 1
    end
end

primes = Prime.first(1000)
result = max_consecutives = 0
(-999..999).each do |a|
    (-999..999).each do |b|
        consecutives = calculate_max_consecutive_primes(a, b, primes)
        if consecutives > max_consecutives
            max_consecutives = consecutives
            result = a*b
        end
    end
end
puts result