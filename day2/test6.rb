#!/usr/bin/env ruby


# hashes can use any objects as keys

class CelestialBody
  attr_accessor :name, :type
end

default_body = CelestialBody.new

default_body.type = 'planet'

bodies = Hash.new(default_body)

bodies['Mars'].name = 'Mars'

p bodies['Mars']

bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'Moon'

p bodies['Europa']

bodies['Venus'].name = 'Venus'


p bodies['Mars']
p bodies['Europa']
p bodies['Venus']

puts bodies
