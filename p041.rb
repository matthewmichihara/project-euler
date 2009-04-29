#!/usr/bin/env ruby
require "util/prime_sieve"

# Generate all permutations of 9 digit pandigitals.
# Sort, reverse, test each for primality.
# If prime, print and halt.
#	If no 9 digit pandigital primes, try 8 digit and so on..
#
# In hindsight, didnt need to check 9 and 8 digit nums
# since if the sum of the digits is divisible by 3,
# the number is not prime.
#
# Oh well.

class Integer
	def prime?
		for i in 2..Math.sqrt(self).floor
			return false if self % i == 0
		end
		return true
	end
end

done = false
perms = Array.new

9.downto(1) do |bound|
	(1..bound).to_a.permutation {|i| perms << i}
	perms.sort.reverse_each do |p|
		if p.join.to_i.prime? then
			puts p.join.to_i
			done = true
			break
		end
	end
	break if done
end

