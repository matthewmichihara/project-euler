#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file
# containing over five-thousand first names, begin by sorting it into
# alphabetical order. Then working out the alphabetical value for each name,
# multiply this value by its alphabetical position in the list to obtain a name
# score.
#
# For example, when the list is sorted into alphabetical order, COLIN, which is
# worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN
# would obtain a score of 938 * 53 = 49714.
#
# What is the total of all the name scores in the file?
#-------------------------------------------------------------------------------

file = File.open("resource/names.txt")
array = file.gets.gsub('"','').split(%r{,})
array.sort!

hash = Hash.new
("A".."Z").each_with_index{|i,index| hash[i] = index+1}

total = 0
array.each_with_index do |i,index|
  total += (index+1) * i.strip.split(//).inject(0){ |sum,j| sum+hash[j]}
end

puts total