def main():
	count = 0
	for i in range(1, 10):
		exp = 1
		while True:
			if len(str(i**exp)) == exp:
				count += 1
			else:
				break
			exp += 1
		
	print(count)

if __name__ == '__main__':
	main()
