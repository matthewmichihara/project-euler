def is_prime(n)
	return false if n < 2
	for i in 2..Math.sqrt(n).floor
	  return false if n % i == 0
	end
	return true
end

def quadratic(a, b, n)
	return n**2 + a*n + b
end

max = 0
for a in (-999..999) do
	for b in (-999..999) do
		n = 0
		count = 0
		while is_prime(quadratic(a, b, n))
			n += 1
			count += 1
			if count > max
				max = count
				puts "Max is #{max} with a=#{a}, b=#{b}, and n=#{n}"
			end
		end
	end
end
		