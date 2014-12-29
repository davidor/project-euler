# The radical of n, rad(n), is the product of the distinct prime factors of n.
# If rad(n) is sorted for 1 ≤ n ≤ 100000, find E(10000). 
# E(k) is the kth element in the sorted vector.

require 'prime'

def rad(n)
    n.prime_division.inject(1) { |result, elem| result *= elem[0] }
end

radicals = (1..10**5).map { |n| [n, rad(n)] }
puts radicals.sort_by(&:last)[9999][0]