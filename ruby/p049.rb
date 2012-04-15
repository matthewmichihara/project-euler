#!/usr/bin/env ruby
require 'util/prime_sieve'

$primes = sieve(9999)
class Integer
	def is_prime?
		$primes.include? self
	end

	def permutation_of? num
		self.to_s.split(//).sort == num.to_s.split(//).sort
	end
end

class Array
	def permutations
		perms = Array.new
		if self.length == 1 then
			perms << self
		else
			self.each_with_index do |e,i|
				d = self.dup
				d.delete_at(i)
				d.permutations.each do |p|
					perms << [e] + p
				end
			end
		end
		perms.uniq
	end
end

(1000..9999).each do |i|
	if $primes.include? i
		i.to_s.split(//).permutations.each do |p|
			perm = p.join.to_i
			next if perm <= i or not $primes.include? perm
			diff = perm - i
			perm2 = perm + diff
			next if perm2 > 9999 or not $primes.include? perm2
			next unless perm.permutation_of? perm2
			puts "#{i} #{perm} #{perm2}"
		end
	end
end
