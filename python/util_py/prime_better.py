#!/usr/bin/env python
from math import floor, sqrt

def primes_up_to(n):
	primes = [2]
	candidate = 3
	while candidate <= n:
		is_prime = True
		upper_bound = floor(sqrt(candidate))

		for prime in primes:
			if prime > upper_bound:
				break
			if not candidate % prime:
				is_prime = False
				break

		if is_prime:
			primes.append(candidate)
		candidate += 2
	return primes
		
