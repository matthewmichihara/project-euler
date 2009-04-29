#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# The decimal number, 585 = 1001001001 base2 (binary), is palindromic in both bases.
#
# Find the sum of all numbers, less than one million, which are palindromic in
# base 10 and base 2.
#
# (Please note that the palindromic number, in either base, may not include
# leading zeros.)
#-------------------------------------------------------------------------------

require "util/better_integer"

sum = 0
(0...1000000).each do |i|
  if i.is_palindrome && i.to_s(2).to_i.is_palindrome
    puts i.to_s + " " + i.to_s(2)
    sum += i
  end
end

puts "sum is #{sum}"