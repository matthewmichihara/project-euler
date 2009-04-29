#!/usr/bin/env ruby

def sieve(max)
	sieve = []
	for i in 2..max
		sieve[i] = i
	end

	m = Math.sqrt(max)
	for i in 2..m
		next unless sieve[i]
		(i**2).step(max, i) do |j|
			sieve[j] = nil
		end
	end
	sieve.compact
end
	
