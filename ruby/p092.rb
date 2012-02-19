#!/usr/bin/env ruby

require 'set'

class Integer
	def sum_sq_dig
		self.to_s.split(//).inject(0) {|sum,i| sum+i.to_i**2}
	end
end

limit = ARGV[0].to_i

count89 = 0
ends_at_1 = Set.new [1]
ends_at_89 = Set.new [89]

(1...limit).each do |i|
	num = i
	loop do
		if ends_at_1.include?(num)
			ends_at_1 << i
			break
		elsif ends_at_89.include?(num)
			ends_at_89 << i
			break
		else
			num = num.sum_sq_dig
		end
	end
end

puts "#{ends_at_89.length} numbers end at 89"
