#!/usr/bin/env ruby

#brute force, store products of numerator and denominators.
#at the end, divide denominator by gcd(num,den) to get simplified form.

num_prod, den_prod = 1, 1
(10..99).each do |num|
	next if num % 10 == 0
	((num+1)..99).each do |den|
		next if den % 10 == 0
		(num.to_s.split(//) & den.to_s.split(//)).each do |digit|
			n = num.to_s.sub(digit, "").to_f
			d = den.to_s.sub(digit, "").to_f
			if (n/d)==(num.to_f/den.to_f) then
				num_prod *= num
			 	den_prod *= den	
			end
		end
	end
end

puts den_prod/num_prod.gcd(den_prod)


