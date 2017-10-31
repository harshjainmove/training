#!/usr/bin/env ruby


# using Comparable module that is used in Numeric, string and other classes for comparison

# using constants

# spaceship operator is used for implementing Comparable

#Comparable provides <, > and other 4 methods,

# is mixed in ny String, Numeric etc

# relies on host class to provide < => method

class Steak

  include Comparable

  attr_accessor :grade

  GRADE_SCORES = {"Prime" => 3, "Choice" => 2, "Select" => 1}

  def <=>(other)
    if GRADE_SCORES[grade] < GRADE_SCORES[other.grade]
     return -1
    elseif GRADE_SCORES[grade] == GRADE_SCORES[other.grade]
      return
    else
      return 1
    end
  end

end


first_steak = Steak.new
first_steak.grade = "Prime"


second_steak = Steak.new
second_steak.grade = "Select"

third_steak = Steak.new
third_steak.grade = "Choice"

puts first_steak > second_steak
puts first_steak < second_steak

puts third_steak.between?(second_steak,first_steak)