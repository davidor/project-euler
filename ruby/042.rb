require 'net/http'

def get_first_triangle_numbers(length)
    got = 0
    n = 1
    triangle_numbers = Array.new
    while (got < length)
        triangle_numbers.push((0.5*n*(n+1)).to_i)
        got += 1
        n += 1
    end
    triangle_numbers
end

def calculate_value(word)
    word.split("").inject(0) { |sum, char| sum += char.ord - 'A'.ord + 1 }
end

# Get the list of words without the " "
uri = URI("https://projecteuler.net/project/words.txt")
words = Net::HTTP.get(uri).split(",").collect { |word| word[1..-2]}

# Calculate the first 20 triangle numbers. 
# 20 should be more than enough for common words
triangle_numbers = get_first_triangle_numbers(20)

# Count triangle words
puts words.count { |word| triangle_numbers.include?(calculate_value(word)) }
