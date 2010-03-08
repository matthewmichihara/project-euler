#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# It can be seen that the number, 125874, and its double, 251748, contain
# exactly the same digits, but in a different order.
#
# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x,
# contain the same digits.
#-------------------------------------------------------------------------------

done=false
num=1

until done do
  array = (2..6).map{|i| num*i}
  if array.all? {|i| num.to_s.split(//).sort.join == i.to_s.split(//).sort.join}
    done=true
  else
    num+=1
  end
end

puts num