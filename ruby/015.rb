# Starting in the top left corner of a 2×2 grid, and only being able to move to
# the right and down, there are exactly 6 routes to the bottom right corner.
# How many such routes are there through a 20×20 grid?

SIZE = 20

# grid[i][j] contains the number of ways to arrive to the bottom right corner
grid = Array.new(SIZE + 1) { Array.new(SIZE + 1, 0) }

# We can only move to the right and to the bottom. Therefore, the number of
# ways to arrive to the bottom right corner from any position in the last
# column or the last row is 1
for i in 0..SIZE
    grid[SIZE][i] = 1
    grid[i][SIZE] = 1
end

# The number of ways to arrive to the bottom right corner from grid[i][j]
# is the sum of the number of ways to arrive from the cell at its right
# and the cell below it
for i in 1..SIZE
    for j in 1..SIZE
        grid[SIZE-j][SIZE-i] = grid[SIZE-j+1][SIZE-i] + grid[SIZE-j][SIZE-i+1]
    end
end

puts grid[0][0]
