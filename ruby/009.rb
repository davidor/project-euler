# A Pythagorean triplet is a set of three natural numbers, a < b < c, 
# for which, a^2 + b^2 = c^2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

(1..998).each do |a|
    (a+1..998).each do |b|
        (b+1..998).each do |c|
            if (a + b + c == 1000) and (a**2 + b**2 == c**2)
                puts a*b*c
                exit
            end
        end
    end
end

