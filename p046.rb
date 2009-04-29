#!/usr/bin/env ruby
require 'util/prime_sieve'

limit = ARGV[0].to_i
primes = sieve(limit)
(3..limit).step(2) do |i|
	next if primes.include? i
	found = false
	primes.each do |p|
		break if p > i
		c = Math.sqrt((i - p)/2)
		if c%1 == 0 then
			#puts "#{i} #{p} #{c}"
			found = true
			break
		end
	end
	puts i if not found
end
