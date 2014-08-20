# Find the maximum total from top to bottom of the triangle

# To solve this problem, I calculate the maximum sum that can be obtained from each position of
# the triangle starting from its base. The maximum sum that can be obtained from each position of
# the base is the number in that position. The maximum sum that can be obtained from each
# position of the row above the base is the number in that position plus the maximum of the 
# two values that are below it. I repeat this process going row by row until I get to the top of 
# the triangle

require 'net/http'

# Read the file with the description of the triangle
uri = URI("https://projecteuler.net/project/resources/p067_triangle.txt")
input = Net::HTTP.get(uri)

# Separate the rows of the triangle and convert its positions to integers
rows = input.split("\n")
triangle = rows.map { |row| row.split(" ").map { |grid_number| grid_number.to_i} }

# Calculate the maximum sum that can be obtained from each position using the algorithm explained above
(triangle.length - 2).downto(0) do |row|
    (0...triangle[row].length).each do |column|
        triangle[row][column] = triangle[row][column] + [triangle[row+1][column], triangle[row+1][column+1]].max
    end
end

puts triangle[0][0] # The maximum sum is stored in the top of the triangle