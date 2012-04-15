#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# The following iterative sequence is defined for the set of positive integers:
#
# n -> n/2 (n is even)
# n -> 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
# 13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
#
# It can be seen that this sequence (starting at 13 and finishing at 1) contains
# 10 terms. Although it has not been proved yet (Collatz Problem), it is thought
# that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.
#-------------------------------------------------------------------------------

hash = Hash.new(0)
count, max = 0, 0

for n in 1..1000000 do
  n_old = n
  count = 0
  while n != 1 do
    if hash[n] != 0
      count += hash[n]
      break
    elsif n.even?
      n /= 2
    else
      n = 3 * n + 1
    end
    count += 1
  end
  
  if count > max
    max = count
    highest = n_old
  end
  
  hash[n_old] = count
end

puts highest
