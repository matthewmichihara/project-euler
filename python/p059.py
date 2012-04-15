def applykey(key, ciphertext):
	result = []
	keyindex = 0
	for c in ciphertext:
		result.append(chr(int(c) ^ key[keyindex]))
		keyindex = (keyindex + 1) % len(key)
	return result

def main():
	ciphertext = []
	for line in open('resource/cipher1.txt', 'r'):
		ciphertext.extend(line.split(','))

	for i in range(ord('a'), ord('z') + 1):
		for j in range(ord('a'), ord('z') + 1):
			for k in range(ord('a'), ord('z') + 1):
				result = ''.join(list(map(str, applykey([i, j, k], ciphertext))))
				if ' the ' in result:
					print(result)
					print('Sum: ', sum(ord(c) for c in result))
					return

if __name__ == '__main__':
	main()
