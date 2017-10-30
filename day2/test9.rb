#!/usr/bin/env ruby


# practicing module

module MyModule
  def comments
    @comments ||= []
  end

  def add_comment(comment)
    comments << comment
  end
end

class Clip
  def play
    puts "playing #{object_id}"
  end
end

class Video < Clip
  include MyModule
  attr_accessor :resolution
end

class Audio < Clip
  include MyModule
  attr_accessor :beats
end

class Photo
  include MyModule
  def initialize
    @format = 'JPEG'
  end
end


v = Video.new
v.add_comment("This is video")
p = Photo.new
p.add_comment("This is photo")

p v.comments, p.comments
