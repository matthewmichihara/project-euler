def main():
	n, d = 1, 2
	count = 0
	for i in range(0, 999):
		n += 2*d
		n, d = d, n
		if len(str(n+d)) > len(str(d)):
			count += 1
	print(count)

if __name__ == '__main__':
	main()

