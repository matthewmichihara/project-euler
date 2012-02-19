import itertools
import random

def main():
	pyramid_sum = []
	for i in range(1, 10):
		for j in range(1, 5):
			pyramid_sum.append(j)

	cubic_sum = []
	for i in range(1, 7):
		for j in range(1, 7):
			cubic_sum.append(j)

	pyramid_dic = {}
	for i in itertools.combinations(pyramid_sum, 9):
		key = sum(i)
		if key in pyramid_dic:
			pyramid_dic[key] += 1
		else:
			pyramid_dic[key] = 1

	cubic_dic = {}
	for i in itertools.combinations(cubic_sum, 6):
		key = sum(i)
		if key in cubic_dic:
			cubic_dic[key] += 1
		else:
			cubic_dic[key] = 1
	
	win = 0
	for k1, v1 in pyramid_dic.items():
		for k2, v2 in cubic_dic.items():
			if k1 > k2:
				win += pyramid_dic[k1]/sum(pyramid_dic.values()) * cubic_dic[k2]/sum(cubic_dic.values())

	print(win)

def test():
	w = 0
	for x in range(0, 100000):
		p = 0
		for i in range(0, 9):
			p += random.randint(1, 4)
		
		c = 0
		for i in range(0, 6):
			c += random.randint(1, 6)

		if p > c:
			w += 1
	print(w/100000)	
			
if __name__ == '__main__':
	test()
