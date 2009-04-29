#!/usr/bin/env ruby

n = 1

7_830_457.times do
	n = (2*n)%10_000_000_000
end

puts (28_433*n+1)%10_000_000_000
