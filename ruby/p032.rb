require 'set'

def pandigital?(a,b,c)
	s = a.to_s + b.to_s + c.to_s
	if s.length != 9
		return false
	end
	if s.include?("0")
		return false
	end
	if s.split(//).uniq.length != 9
		return false
	end
	return true
end

start = Time.now
products = Set.new
for i in (1..9999) do
	if i.to_s.length != i.to_s.split(//).uniq.length
		next
	end
	for j in (i..9999) do
		if j.to_s.length != j.to_s.split(//).uniq.length
			next
		end
		if (i.to_s + j.to_s + (i*j).to_s).length > 9 
			break
		end
		if pandigital?(i,j,i*j)
			puts "#{i} * #{j} = #{i*j}"
			products << i*j
		end
	end
end

sum = products.inject(0) {|sum, n| sum+n}
puts "The sum is #{sum}"
puts "Time elapsed: #{Time.now - start} seconds"

