#! /usr/bin/python
from math import sqrt, ceil

def is_prime(n):
    if n==1: return False
    if n==2: return True
    for i in range(2, int(ceil(sqrt(n)))+1):
        if n%i==0:
            return False
    return True

def primes_up_to(n):
    primes = []
    flag = False
    for i in range(2,n):
        for p in sorted(primes):
            if p <= int(ceil(sqrt(i))):
                if i % p == 0:
                    flag = True
                    break
        if not flag: primes.append(i)
        flag = False
    return primes
