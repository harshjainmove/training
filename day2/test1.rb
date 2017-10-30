#!/usr/bin/env ruby


# hashes can use any objects as keys

protons = {"He" => "Helium", "H" => "Hydrogen"}

p protons.has_key? ("He")
p protons.has_key? ("je")

p protons.has_value? ("Helium")

p protons.keys

p protons.values

# each takes keys and values for hashes
#
# protons.each do |a,b|
#   puts "#{a} => #{b}"
# end

protons.merge({"He" => "Helium_new"})


protons.each do |a,b|
  puts "#{a} => #{b}"
end

abc = Hash.new(5)

abc["x"] = "first"

abc["y"]

puts abc