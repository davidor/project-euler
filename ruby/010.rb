# Find the sum of all the primes below two million.

require 'prime'

LIMIT = 2000000
puts Prime.take_while { |prime| prime < LIMIT }.reduce(:+)