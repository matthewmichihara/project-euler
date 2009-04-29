#!/usr/bin/env ruby

# Brute force. Really needs to be optimized..
count = 0
h = Hash.new
a = Array.new
(0..9).to_a.permutation{|p| a<<p}
a.each do |i|
	str = i.join.to_s
	if str[7..9].to_i % 17 == 0 then
		if str[6..8].to_i % 13 == 0 then
			if str[5..7].to_i % 11 == 0 then
				if str[4..6].to_i % 7 == 0 then
					if str[3..5].to_i % 5 == 0 then
						if str[2..4].to_i % 3 == 0 then
							if str[1..3].to_i % 2 == 0 then
								puts str
								count += str.to_i
							end
						end
					end
				end
			end
		end
	end
end

puts count
