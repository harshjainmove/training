#!/usr/bin/env ruby

# File handling using blocks (File.close not needed in this case)

lines = []

File.open("reviews.txt") do |review_file|

  lines = review_file.readlines

end

# this is longer version of code
# relevant_lines = []
#
# lines.each do |line|
#   if line.include?("movie")
#     relevant_lines << line
#   end
# end

# using find_all method to return all elements in an array
# find_all runs test against all elements in an array
# using split and find_index

relevant_lines = lines.find_all {|line| line.include?("movie")}

reviews = relevant_lines.reject {|line| line.include? ("--")}

def find_adjective(string)
  words = string.split(" ")
  index = words.find_index("is")
  words[index + 1]
end

adjectives = reviews.map do |review|
  adjective = find_adjective(review)
  adjective.capitalize
end


p adjectives