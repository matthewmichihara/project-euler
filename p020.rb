#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# n! means n * (n  1) * ...  3 * 2 * 1
#
# Find the sum of the digits in the number 100!
#-------------------------------------------------------------------------------

require "util/better_integer"

num=100

puts 100.factorial.to_s.split(//).inject(0){|sum,i| sum+i.to_i}