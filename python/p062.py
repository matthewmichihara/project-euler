def getkey(i):
	return tuple(sorted(tuple(str(i ** 3))))

def main():
	cubes = {}

	i = 0
	while True:
		key = getkey(i)
		if key not in cubes.keys():
			cubes[key] = []
		cubes[key].append(i)

		if len(cubes[key]) == 5:
			j = i + 1
			exactly = True
			while len(key) == len(getkey(j)):
				if key == getkey(j):
					exactly = False
					break
				j += 1
			if exactly == True:
				print(min([n ** 3 for n in cubes[key]]))
				break
		i += 1

if __name__ == '__main__':
	main()
