#!/usr/bin/env ruby

@a = Array.new
@h = Hash.new

File.open("resource/triangle.txt") do |f|
  while line = f.gets
    @a << line.split.map{|s| s.to_i}
  end	
end

def max_path(row, col)
  cur = @a[row][col]
  if row == @a.length-1 then
    return cur
  else
    unless @h[[row,col]] then
			@h[[row,col]] = cur+[max_path(row+1,col),max_path(row+1,col+1)].max
    end
 	@h[[row,col]]
  end
end

puts max_path(0,0)
