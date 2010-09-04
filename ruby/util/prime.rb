#!/usr/bin/env ruby

def sieve(max)
	n_sq = max
	n = Math.sqrt(n_sq)
	a =(0..n_sq).to_a
	a[0] = nil
	a[1] = nil
	index = 2

	while index <= n do
		# remove multiples of index up to n_sq
		multiple = index * 2
		while multiple <= n_sq do
			a[multiple] = nil
			multiple += index
		end
		
		# get next index
		index += 1
		while index <=n and a[index] == nil do
			index += 1
		end
	end
	s = SortedSet.new
	s.merge(a.compact)
end

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
