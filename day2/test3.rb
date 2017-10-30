#!/usr/bin/env ruby



# using hashes for multiple parameters
# use symbols as keys for hashes and use hashes at last while using then as parameters along with numbers, strings

# def area(options)
#   options[:length]*options[:width]
# end
#
# dimen = {length:23, width:45}
#
# puts area(dimen)

class Candidate
  attr_accessor :name, :age, :occupation, :hobby
  def initialize(name, age:nil, occupation: "candidate", hobby: "politics")
    self.name = name
    self.age = age
    self.hobby = hobby
  end
end

candidate = Candidate.new("Harsh",hobby:"Music",occupation: "Engineer")

p candidate.name
p candidate.hobby
p candidate.age
p candidate.occupation

p candidate

