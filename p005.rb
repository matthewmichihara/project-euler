#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.
#
# What is the smallest number that is evenly divisible by all of the numbers
# from 1 to 20?
#-------------------------------------------------------------------------------

# Finds LCM
upper_bound = 20
multiple = 1
factor = 1

for i in 1..upper_bound
    until multiple * factor % i == 0
        factor += 1
    end
    multiple *= factor
    factor = 1
end

puts multiple
        
        
