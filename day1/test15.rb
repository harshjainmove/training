#!/usr/bin/env ruby

# playing with blocks

def block_testing
  puts yield
end

block_testing {1 + 1}

block_testing do
  "first line"
  "second line"
end

block_testing {"I love dogs".include?("dogs")}

def blocks_return
  puts yield(9,3)
end

blocks_return {|a,b| a +b}

# other important array methods are
# all, any, none, count, partition, map, max_by, min_by
#
#
#
#






