#!/usr/bin/env ruby

# Basic array without blocks

prices = [10,20,20]

def total(prices)
  index=0
  amount=0

  while index<prices.length
    amount += prices[index]
    index += 1
  end
  amount
end

def discounts(prices)
  index=0
  amount=0

  while index<prices.length
    prices[index] -= 5
    index += 1
  end
  prices
end

p total(prices)

p discounts(prices)



