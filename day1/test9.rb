#!/usr/bin/env ruby

  # Working with blocks


# def my_method
#   yield 1
#   yield 2
#   yield 3
# end
#
# my_method { |param| puts param}

  def my_method
    puts ("we are in the method. We will call block now")
    yield "Harsh", 28
    puts("we are back in the method")
  end

  my_method { |name, age| puts "#{name} has age of #{age}" }

  ["a","b","c"].each { |param| puts param}







