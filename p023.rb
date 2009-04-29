#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# A perfect number is a number for which the sum of its proper divisors is
# exactly equal to the number. For example, the sum of the proper divisors of 28
# would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
#
# A number whose proper divisors are less than the number is called deficient
# and a number whose proper divisors exceed the number is called abundant.
#
# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest
# number that can be written as the sum of two abundant numbers is 24. By
# mathematical analysis, it can be shown that all integers greater than 28123
# can be written as the sum of two abundant numbers. However, this upper limit
# cannot be reduced any further by analysis even though it is known that the
# greatest number that cannot be expressed as the sum of two abundant numbers is
# less than this limit.
#
# Find the sum of all the positive integers which cannot be written as the sum
# of two abundant numbers.
#-------------------------------------------------------------------------------

class Integer
  def is_abundant?
    sum = 0
    (1..Math.sqrt(self).floor).each do |i|
      if (self % i).zero?
        sum += i
        sum += self/i if not (i == Math.sqrt(self) or i == 1)
        return true if sum > self
      end
    end
    false
  end
end

    
LIMIT = 28123

abundant_numbers = (1..LIMIT).select {|i| i.is_abundant? }
summable = []
abundant_numbers.each do |i|
  abundant_numbers.each do |j|
    summable[i+j] = true
  end
end

puts (1..LIMIT).inject(0) { |sum, k| sum + (summable[k] == true ? 0 : k) }
