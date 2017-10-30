#!/usr/bin/env ruby


# practicing module

class SuperClass

end


module MyModule

  def first
    puts "In module first method"
  end

  def second
    puts "In module second method"
  end
end


class MyClass < SuperClass
  include MyModule
end


object1 = MyClass.new
object1.first
object1.second

p MyClass.ancestors