#!/usr/bin/env ruby


# using Enumerable module

# provides find_all, reject, map

class WorldSplitter

  include Enumerable
  attr_accessor :string

  def each
    string.split(' ').each do |word|
      yield word
    end
  end
end


splitter = WorldSplitter.new

splitter.string = "abc def hij klm"

p splitter.find_all { |word| word.include?("d")}
p splitter.reject { |word| word.include?("d")}
p splitter.map { |word| word.reverse }

p splitter.count
p splitter.first
p splitter.sort



