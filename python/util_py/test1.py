from prime import is_prime, primes_up_to

s = set()

for i in range(2,100000):
	if is_prime(i):
		s.add(i)

print len(s)
