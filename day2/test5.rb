#!/usr/bin/env ruby


# hashes can use any objects as keys

class CelestialBody
  attr_accessor :name, :type
end

sun = CelestialBody.new

sun.name = "Sun"
sun.type = "Star"

pluto = CelestialBody.new

neptune = sun

p sun

p pluto

p neptune

