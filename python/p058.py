import math

def isprime(n):
	if n <= 1:
		return False
	for i in range(2, math.floor(math.sqrt(n))+1):
		if (n % i == 0):
			return False
	return True

def main():
	prime_diagonals = 3
	diagonals = 5
	current_max = 9
	side = 3
	primes = []

	while (prime_diagonals/diagonals >= 0.1):
		for i in range(1, 5):
			current_max = current_max + side + 1
			if isprime(current_max):
				prime_diagonals += 1
				primes.append(current_max)
			diagonals += 1
		side += 2
	print(side)

if __name__ == '__main__':
	main()
