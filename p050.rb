#!/usr/bin/env ruby
require 'utils/prime_sieve'

size = ARGV[0].to_i
count, max_count = 0, 0

primes = sieve(size)
for i in 0...primes.size do
	sum, count = 0, 0
	for j in i...primes.size do
		break if sum > size
		if sum < size then
			sum += primes[j]
			count += 1
			if count > max_count and primes.include?(sum) then
				max_count = count
				answer = sum
			end
		end
	end
end

puts answer
