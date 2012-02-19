#!/usr/bin/env ruby

limit = 1000
h = Array.new(limit+1,0)
(1..limit).each do |a|
	(a..limit).each do |b|
		c = Math.sqrt(a**2 + b**2)
		next unless c % 1 == 0
		p = a+b+c
		next unless p<=limit
		h[p] += 1
	end
end

puts h.find_index(h.max)
