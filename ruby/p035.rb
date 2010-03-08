#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# The number, 197, is called a circular prime because all rotations of the
# digits: 197, 971, and 719, are themselves prime.
#
# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71,
# 73, 79, and 97.
#
# How many circular primes are there below one million?
#-------------------------------------------------------------------------------

class Fixnum
  def is_circular_prime
    array = self.to_s.split(//)
    self.to_s.length.times do
      array << array.first
      array.delete_at(0)
      unless array.join.to_i.is_prime
        return false
      end
    end
    return true
  end
  
  def is_prime
    for i in 2..Math.sqrt(self).floor
      return false if self % i == 0
    end
    return true
  end
end

limit = 1000000
puts (2..limit).inject(0) {|sum, i| sum+(i.is_circular_prime ? 1 : 0)}


