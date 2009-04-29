#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# An irrational decimal fraction is created by concatenating the positive
# integers:
#
# 0.12345678910_1_112131415161718192021...
#
# It can be seen that the 12th digit of the fractional part is 1.
#
# If dn represents the nth digit of the fractional part, find the value of the
# following expression.
#
# d1 * d10 * d100 * d1000 * d10000 * d100000 * d1000000
#-------------------------------------------------------------------------------

num = (1..1000000).to_a.to_s
index, prod = 1, 1
7.times do
  prod *= num[index-1,1].to_i
  index *= 10
end

puts prod