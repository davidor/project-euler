# What is the millionth lexicographic permutation of the digits 
# 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

digits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
permutations = Array.new
digits.permutation.to_a.map { |perm| permutations.push(perm.join) }
puts permutations.sort![999999]