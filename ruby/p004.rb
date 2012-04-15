#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91  99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.
#-------------------------------------------------------------------------------

def is_palindrome(number)
  return true if number.to_s == number.to_s.reverse
  return false
end

largest = 0

for i in 100..999
  for j in 100..999
    product = i * j
    if is_palindrome(product) and product > largest
      largest = product
    end
  end
end

puts largest