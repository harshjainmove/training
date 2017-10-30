#!/usr/bin/env ruby

# File handling

review_file = File.open("reviews.txt")

puts (review_file.class)

## readlines method returns all the lines as array

lines = review_file.readlines

puts lines[0]

puts lines[2]

test12.rbreview_file.close