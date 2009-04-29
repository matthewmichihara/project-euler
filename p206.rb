#!/usr/bin/env ruby

# number must end in 30 or 70 in order 
# to form another number ending in 900 
# when squared
i = 1_000_000_030
jump = 60
loop do
	a = (i**2).to_s
	puts "#{i} #{a}" if i % 10 == 0
	if a =~ /1.2.3.4.5.6.7.8.9.0/
		puts "answer: #{i} #{a}"
		break
	end
	if jump == 40
		jump = 60
	else
		jump = 40
	end
	i += jump
end
