#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# Surprisingly there are only three numbers that can be written as the sum of
# fourth powers of their digits:
#
#    1634 = 1^4 + 6^4 + 3^4 + 4^4
#    8208 = 8^4 + 2^4 + 0^4 + 8^4
#    9474 = 9^4 + 4^4 + 7^4 + 4^4
#
# As 1 = 1^4 is not a sum it is not included.
#
# The sum of these numbers is 1634 + 8208 + 9474 = 19316.
#
# Find the sum of all the numbers that can be written as the sum of fifth powers
# of their digits.
#-------------------------------------------------------------------------------

sum, total = 0, 0
power5 = []
10.times { |p| power5[p] = p**5}

for i in 2..1000000
    array = i.to_s.split(//)
    array.length.times { |j| sum+=power5[array[j].to_i]}
    total += i if i == sum
    sum = 0
end
puts total


