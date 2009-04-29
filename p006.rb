#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# The sum of the squares of the first ten natural numbers is,
# 1² + 2² + ... + 10² = 385
#
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)² = 55² = 3025
#
# Hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is 3025 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred
# natural numbers and the square of the sum.
#-------------------------------------------------------------------------------

num = 100
sum_of_square, sum = 0, 0

for i in 1..num
  sum_of_square += i**2
  sum += i
end

square_of_sum = sum**2
difference = square_of_sum - sum_of_square
puts difference
