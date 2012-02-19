def f(n):
	x = 1
	while True:
		f = True
		for i in list(str(n * x)):
			if i not in ['0', '1', '2']:
				x += 1
				f = False
				break
		if f == True:
			return n * x

def main():
	sum = 0
	for i in range(1, 101):
		sum += f(i)/i
		print(i, ' ', f(i))
	print(sum)
				
if __name__ == '__main__':
	main()
