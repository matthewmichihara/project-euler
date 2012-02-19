#! /usr/bin/python

list = []

for a in range(2,101):
    for b in range(2,101):
        list.append(a**b)

print len(set(list))
