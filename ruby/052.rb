# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x,
# contain the same digits.

# Returns true if two numbers contain the same digits and false otherwise
def contain_same_digits?(x, y)
    x.to_s.chars.sort.join == y.to_s.chars.sort.join
end

# Returns true if x, 2x, 3x, 4x, 5x, and 6x contain the same digits
def six_contain_same_digits?(x)
    (2..6).each do |multiplier|
        return false unless contain_same_digits?(x, x*multiplier)
    end
    true
end

puts (1..Float::INFINITY).detect { |x| six_contain_same_digits?(x) }