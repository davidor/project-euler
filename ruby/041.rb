# What is the largest n-digit pandigital prime that exists?

require 'prime'

(1..9).to_a.reverse.each do |digits|
    permutations = (1..digits).to_a.reverse.permutation
    result = permutations.detect { |perm| perm.join.to_i.prime? }
    unless result.nil?
        puts result.join
        exit
    end
end
