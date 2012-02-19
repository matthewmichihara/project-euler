#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# Starting with the number 1 and moving to the right in a clockwise direction a
# 5 by 5 spiral is formed as follows:
#
# 21 22 23 24 25
# 20  7  8  9 10
# 19  6  1  2 11
# 18  5  4  3 12
# 17 16 15 14 13
#
# It can be verified that the sum of both diagonals is 101.
#
# What is the sum of both diagonals in a 1001 by 1001 spiral formed in the same
# way?
#-------------------------------------------------------------------------------

dimension = 1001
difference = 2
sum = 1
temp = 0
diagonal = 1

for i in 1..dimension**2
  if temp == difference
    sum += i
    temp = 0
    if diagonal == 4
      difference += 2
      diagonal = 1
    else
      diagonal += 1
    end
  end
  temp += 1
end

puts sum
