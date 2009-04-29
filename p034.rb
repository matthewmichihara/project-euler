#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
#
# Find the sum of all numbers which are equal to the sum of the factorial of
# their digits.
#
# Note: as 1! = 1 and 2! = 2 are not sums they are not included.
#-------------------------------------------------------------------------------

def factorial(n)
  if n == 0
    1
  else
    n * factorial(n - 1)
  end
end

limit = 7*factorial(9)

fact = Hash.new
10.times { |i| fact[i.to_s] = factorial(i) }
sum, total = 0, 0

for i in 3..limit
  temp = i.to_s.split(//)
  temp.length.times { |j| sum += fact[temp[j]] }
  total += sum if i == sum
  sum = 0
end

puts total
