#!/usr/bin/env ruby


# hashes can use any objects as keys
#using hash defaults

lines = []

File.open("votes.txt") do |file|
  lines = file.readlines
end

votes = Hash.new(0)

lines.each do |line|
  name = line.chomp
  name.upcase!
  votes[name] += 1
end

p votes

## every expression in ruby is truthy and falsy
## everything except and nil and false is truthy
