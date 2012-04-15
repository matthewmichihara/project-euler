def main():
	numbers = []
	for i in range(1, 5):
		count = 1
		while count * i <= 5:
			numbers.append(i)
			count += 1

	print(numbers)

if __name__ == '__main__':
	main()
