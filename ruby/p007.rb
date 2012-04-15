#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
#
# What is the 10001st prime number?
#-------------------------------------------------------------------------------

class Fixnum
    def is_prime
        for i in 2..Math.sqrt(self).floor
           return false if self % i == 0
        end
        return true
    end
end

limit = 0
candidate = 1

until limit == 10001
    candidate += 1
    if candidate.is_prime
        limit += 1
    end
end

puts candidate
    
