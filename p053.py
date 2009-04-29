#!/usr/bin/env python

#-------------------------------------------------------------------------------
# There are exactly ten ways of selecting three from five, 12345:
#
# 123, 124, 125, 134, 135, 145, 234, 235, 245, and 345
#
# In combinatorics, we use the notation, ^(5)C_(3) = 10.
#
# In general,
# n choose r = n!/(r!(n−r)!), where r ≤ n, n! = n×(n−1)×...×3×2×1, and 0! = 1.
#
# It is not until n = 23, that a value exceeds one-million:
# 23 choose 10 = 1144066.
#
# How many, not necessarily distinct, values of  ^(n)C_(r), for 1 ≤ n ≤ 100, are 
# greater than one-million?
#-------------------------------------------------------------------------------

def factorial(n):
	if n == 0:
		return 1
	else:
		return n * factorial(n-1)

def combination(n, r):
	if n == r or r == 0:
		return 1
	else:
		return factmap[n]/(factmap[r]*factmap[n-r])

factmap = {}
for i in range(1, 101):
	factmap[i] = factorial(i)

try:
	count = 0
	for i in range(1,101):
		for j in range(1,i+1):
			if combination(i,j) > 1000000:
				count += 1
except:
	print i,j

print count
