# What is the smallest positive number that is evenly 
# divisible by all of the numbers from 1 to 20?

#returns whether n is divisible by all the numbers in the range [min, max]
def evenly_divisible?(n, min, max)
    (min..max).all? { |x| n%x == 0 }
end

puts (20..Float::INFINITY).step(20).detect { |x| evenly_divisible?(x, 1, 20) }
