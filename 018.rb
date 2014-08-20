# Find the maximum total from top to bottom of the triangle

# To solve this problem, I calculate the maximum sum that can be obtained from each position of
# the triangle starting from its base. The maximum sum that can be obtained from each position of
# the base is the number in that position. The maximum sum that can be obtained from each
# position of the row above the base is the number in that position plus the maximum of the 
# two values that are below it. I repeat this process going row by row until I get to the top of 
# the triangle

input =
   "75
    95 64
    17 47 82
    18 35 87 10
    20 04 82 47 65
    19 01 23 75 03 34
    88 02 77 73 07 63 67
    99 65 04 28 06 16 70 92
    41 41 26 56 83 40 80 70 33
    41 48 72 33 47 32 37 16 94 29
    53 71 44 65 25 43 91 52 97 51 14
    70 11 33 28 77 73 17 78 39 68 17 57
    91 71 52 38 17 14 91 43 58 50 27 29 48
    63 66 04 68 89 53 67 30 73 16 69 87 40 31
    04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"

rows = input.split("\n")
triangle = rows.map { |row| row.split(" ").map { |grid_number| grid_number.to_i} }

# Calculate the maximum sum that can be obtained from each position using the algorithm explained above
(triangle.length - 2).downto(0) do |row|
    (0...triangle[row].length).each do |column|
        triangle[row][column] = triangle[row][column] + [triangle[row+1][column], triangle[row+1][column+1]].max
    end
end

puts triangle[0][0] # The maximum sum is stored in the top of the triangle