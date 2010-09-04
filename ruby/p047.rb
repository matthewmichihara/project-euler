require 'set'

def sieve(max)
	n_sq = max
	n = Math.sqrt(n_sq)
	a =(0..n_sq).to_a
	a[0] = nil
	a[1] = nil
	index = 2

	while index <= n do
		# remove multiples of index up to n_sq
		multiple = index * 2
		while multiple <= n_sq do
			a[multiple] = nil
			multiple += index
		end
		
		# get next index
		index += 1
		while index <=n and a[index] == nil do
			index += 1
		end
	end
	s = SortedSet.new
	s.merge(a.compact)
end

def factor(n)
	factors = Set.new
	if $s.include?(n)
		factors << n
		return factors
	end
	$s.each do |p|
		if (p > n)
			return factors
		end
		
		while (n % p == 0) do
			n /= p
			factors << p
		end
	end
end

start = Time.now
input = ARGV[0].to_i
$s = sieve(input)
c = (4..input).to_a


len = c.length
i = 0
while i < len do
	if (i % 1000 == 0)
		puts i
	end
	if (factor(c[i]).length == 4)
		if (factor(c[i+1]).length == 4)
			if (factor(c[i+2]).length == 4)
				if (factor(c[i+3]).length == 4)
					puts "#{c[i]} #{c[i+1]} #{c[i+2]} #{c[i+3]}"
					break
				else
					i += 4
				end
			else
				i += 3
			end
		else
			i +=2
		end
	else
		i += 1
	end
end


puts "Time elapsed: #{Time.now - start} seconds"