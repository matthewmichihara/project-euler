#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.
#-------------------------------------------------------------------------------

require "util/better_integer"

limit = 2000000
puts (2...limit).inject(0){|sum,i| sum+(i.is_prime ? i:0)}