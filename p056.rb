#!/usr/bin/env ruby
# http://projecteuler.net/index.php?section=problems&id=55 

require 'set'

sums = Set.new

(1...100).each do |a|
  (1...100).each do |b|
    sums << (a**b).to_s.split(//).inject(0) {|sum,i| sum+i.to_i} 
  end
end

puts "max digital sum: #{sums.max}"
