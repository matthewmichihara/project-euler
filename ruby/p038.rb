#!/usr/bin/env ruby

max_pan = 0

(1..10_000).each do |i|
	pan = i.to_s.split(//)
	(2..9).each do |j|
		n = (i*j).to_s.split(//)
		pan += n
		break if pan.include? "0"
		break if pan.size > 9
		break if pan.uniq!
		if pan.size == 9 then
			p = pan.join.to_i
			max_pan = p if p > max_pan
			break
		end
	end
end

puts max_pan
