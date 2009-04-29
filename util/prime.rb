#!/usr/bin/env ruby

def prime_generator()
	primes = [2]
	yield 2
	candidate = 3
	while true
		is_prime = true
		upper_bound = (Math.sqrt(candidate)).floor
		for prime in primes
			if prime > upper_bound
				break
			end
			if (candidate % prime).zero?
				is_prime = false
				break
			end
		end
		if is_prime
			primes << candidate
			yield candidate
		end
		candidate += 2
	end
end
