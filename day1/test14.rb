#!/usr/bin/env ruby

# methods with ? return a boolean value, using include? method

my_string = "i like apples, bananas, ornages"


puts my_string.include?("apples")

puts my_string.include?("peach")


#playing with find_index

p ["abc","def", "hig"].find_index("hig")

#playing with map

p [1,2, 3].map {|number| number**2}

abc  =  [1,2, 3].map  do |number|
  number**2
end

p abc
