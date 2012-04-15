matrix = []
mincosts = []

def sumcol(r1, r2, c):
	global mincosts

	r1, r2 = min(r1, r2), max(r1, r2)
	sum = 0
	for r in range(r1, r2 + 1):
		sum += matrix[r][c]
	return sum

def getmincost(r, c):
	global matrix
	global mincosts

	if c == 0:
		return matrix[r][0]
	mincost = float('inf')
	for i in range(0, len(matrix)):
		cost = mincosts[i][c - 1]
		cost += sumcol(i, r, c)
		mincost = min(cost, mincost)
	return mincost

def main():
	global matrix
	global mincosts

	for line in open('resource/matrix.txt', 'r'):
		row = []
		line = line.strip()
		for i in line.split(','):
			row.append(int(i))
		matrix.append(row)

	for r in range(0, len(matrix)):
		row = []
		for c in range(0, len(matrix[r])):
			row.append(float('inf'))
		mincosts.append(row)

	for c in range(0, len(matrix[0])):
		for r in range(0, len(matrix)):
			mincosts[r][c] = getmincost(r, c)
	
	minpath = float('inf')
	for r in range(0, len(matrix)):
		minpath = min(minpath, mincosts[r][len(mincosts[0]) - 1])
	
	print(minpath)

if __name__ == '__main__':
	main()
