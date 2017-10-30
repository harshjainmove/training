#!/usr/bin/env ruby


# hashes can use any objects as keys

class CelestialBody
  attr_accessor :name, :type
end

bodies = Hash.new do |hash,key|
  body = CelestialBody.new
  body.type = 'planet'
  hash[key] = body
  body
end


bodies['Mars'].name = 'Mars'
bodies['Mars'].name = 'Europa'
bodies['Europa'].name = 'moon'
bodies['Venus'].name =  'Venus'

p bodies['Mars']
p bodies['Europa']
p bodies['Venus']

puts bodies