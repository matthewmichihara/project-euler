#! /usr/bin/python

tri = []
pen = []
hex = []

for n in range(1,100000):
	tri.append(n*(n+1)/2)
	pen.append(n*(3*n-1)/2)
	hex.append(n*(2*n-1))

t = set(tri)
p = set(pen)
h = set(hex)

print max(t & p & h)
