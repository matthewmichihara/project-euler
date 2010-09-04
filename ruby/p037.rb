require 'set'

start = Time.now

def sieve(n)
	n_sq = n**2
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

def truncatable(n)
	str = n.to_s
	last = str.length - 1
	for i in (1..last) do
		if not $s.include?(str[i..last].to_i)
			return false
		end
		
		if not $s.include?(str[0..last-i].to_i)
			return false
		end
	end
	return true
end

input = ARGV[0].to_i
$s = sieve(input)

sum = 0
count = 0
$s.each do |i|
	if i > 7
		if truncatable(i)
			puts i
			sum += i
			count += 1
			break if count == 11
		end
	end
end

puts "The sum is #{sum}"		
puts "Time elapsed: #{Time.now - start} seconds"
