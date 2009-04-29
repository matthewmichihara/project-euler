#!/usr/bin/env ruby
# http://projecteuler.net/index.php?section=problems&id=56 

lychrels = Array.new

class Integer
  def is_palindrome?
    self.to_s == self.to_s.reverse
  end
  def reverse
    self.to_s.reverse.to_i
  end
end

(0...10_000).each do |i|
  num = i
  is_lychrel = true
  (0...50).each do
    num = num + num.reverse
    if num.is_palindrome? then
      is_lychrel = false
      break;
    end
  end
  lychrels << i if is_lychrel
end

puts "lychrel count: #{lychrels.length}"
