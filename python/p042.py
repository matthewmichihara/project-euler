#!/usr/bin/env python

#-------------------------------------------------------------------------------
# The nth term of the sequence of triangle numbers is given by, tn = 0.5n(n+1);
# so the first ten triangle numbers are:
#
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
# By converting each letter in a word to a number corresponding to its
# alphabetical position and adding these values we form a word value. For
# example, the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word value
# is a triangle number then we shall call the word a triangle word.
#
# Using words.txt (right click and 'Save Link/Target As...'), a 16K text file
# containing nearly two-thousand common English words, how many are triangle
# words?
#-------------------------------------------------------------------------------

triangles = []
for i in range(1, 21):
    triangles.append((i * (i + 1))/2)

alphabet = {}
count = 1
a = 'abcdefghijklmnopqrstuvwxyz'
for c in a:
    alphabet[c] = count
    count += 1

file = open('resource/words.txt', 'r')
words = file.read().split(',')
file.close()

sum = 0
num = 0
for word in words:
    word = word.replace('\"', '')
    for letter in word:
        sum += alphabet[letter.lower()]
    if sum in triangles:
        num += 1
    sum = 0

print num


        
