#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
#-------------------------------------------------------------------------------

num = 600851475143
divisor = 2

until num == 1 do
  if num % divisor == 0
    num /= divisor
  else
    divisor += 1
  end
end

puts divisor