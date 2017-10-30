#!/usr/bin/env ruby

# Basic array without blocks

prices = [10,20,20]

def total(prices)
  amount=0

  prices.each do |price|
    amount += price
  end
  amount
end

def discounts(prices)
  amount=0
  prices.each do |price|
    price -= 5
  end
  prices
end

p total(prices)

p discounts(prices)

def wire
  yield "current"
end

wire { |abc| puts "make sure that the #{abc} is off!" }