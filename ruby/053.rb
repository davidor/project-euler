# How many, not necessarily distinct, values of  nCr = n! / (r!(n-r)!),
# for 1 ≤ n ≤ 100, are greater than one-million?

def fact(n)
    (1..n).reduce(:*) || 1
end

answer = 0
(1..100).each do |n|
    (1..n).each do |r|
        answer += 1 if fact(n)/(fact(r)*fact(n - r)) > 1000000
    end
end
puts answer