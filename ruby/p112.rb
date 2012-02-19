#!/usr/bin/env ruby

class Integer
	def bouncy?
		goes_up, goes_down = false, false
		num = ""
		s = self.to_s
		if s.length <=2 then
			return false
		else
			num = s.split(//).first
			s.split(//).each do |d|
				if d > num then
					goes_up = true
					num = d
				elsif d < num then
					goes_down = true
					num = d
				end
				if goes_up and goes_down then
					return true
				end
			end
			return false
		end
	end
end

percent = ARGV[0].to_f
count = 0
num_bouncy = 0
num = 1

while(true) do
	unless num == 1 then
		break if num_bouncy/(num-1) == percent
	end
	if num.bouncy? then
		num_bouncy += 1.0
	end
	num += 1
end

puts num-1
