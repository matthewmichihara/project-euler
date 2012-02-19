#!/usr/bin/env ruby

limit = ARGV.shift.to_i

def get_coprime_10(a)
	until a%2 != 0 do
		a /= 2
	end
	until a%5 != 0 do
		a /= 5
	end
	a
end

max, d = 0, 0
(2..limit).each do |i|
	coprime = get_coprime_10(i)
	count = 1
	while true do
		mod = 10**count % coprime
		if mod == 0 or mod == 1
			if mod == 0
				count = 0
			end
			if count > max
				max = count
				d = i
			end
			break
		end
		count += 1
	end
end

puts "#{d} #{1.0/d} #{max}"	
