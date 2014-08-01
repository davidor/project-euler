# Using names.txt, a 46K text file containing over five-thousand first names,
# begin by sorting it into alphabetical order. Then working out the 
# alphabetical value for each name, multiply this value by its alphabetical
# position in the list to obtain a name score.
# For example, when the list is sorted into alphabetical order, COLIN, which
# is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. 
# So, COLIN would obtain a score of 938 × 53 = 49714.
# What is the total of all the name scores in the file?

require 'net/http'

def get_score(name, index)
    index*(name.split("").map { |char| char.ord - 'A'.ord + 1 }.reduce(:+))
end

uri = URI("https://projecteuler.net/project/names.txt")
names = Net::HTTP.get(uri).split(",").collect { |name| name[1..-2]}.sort
puts names.each_with_index.map { |name, index| get_score(name, index + 1) }.reduce(:+)