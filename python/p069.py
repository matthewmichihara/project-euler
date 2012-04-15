from util_py.prime import primes_up_to
from math import sqrt, ceil

def main():
	primes = primes_up_to(ceil(sqrt(1000000)))
	n = 1
	for p in primes:
		if n * p > 1000000:
			break
		n *= p
	print(n)	

if __name__ == '__main__':
	main()
