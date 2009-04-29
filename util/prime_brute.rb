#!/usr/bin/env ruby

max = ARGV.shift.to_i

primes = [2]
candidate = 3
while candidate <= max
	is_prime = true
	upper_bound = (Math.sqrt(candidate)).floor
	for prime in primes
		break if prime > upper_bound
		if (candidate % prime).zero?
			is_prime = false
			break
		end
	end
	if is_prime
		primes << candidate
	end
	candidate += 2
end

puts "num primes: #{primes.length}"
