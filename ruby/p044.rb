def f1(a,b)
	return (Math.sqrt(12*(a*(3*a-1)+b*(3*b-1))+1)+1)/6.0
end

def f2(a,b)
	return (Math.sqrt(12*(a*(3*a-1)-b*(3*b-1)).abs+1)+1)/6.0
end

def d(a,b)
	return (a*(3*a-1)/2 - b*(3*b-1)/2).abs
end

start = Time.now
for i in 1..10000 do
	for j in i..10000 do
		if f1(i,j)%1 == 0 and f2(i,j)%1 == 0
			puts "#{i} #{j} d=#{d(i,j)}"
		end
	end
end
puts "Time elapsed: #{Time.now - start} seconds"