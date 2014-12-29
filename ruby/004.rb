# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome? (n)
    n.to_s == n.to_s.reverse
end

largest_palind = 0
(100..999).each do |x|
    (100..999).each do |y|
        mult = x*y
        largest_palind = mult if palindrome?(mult) and mult > largest_palind
    end
end
puts largest_palind
