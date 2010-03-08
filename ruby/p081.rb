#!/usr/bin/env ruby

# try to do it with djikstras since its shortest path

$a = Array.new
$h = Hash.new

File.open("resource/matrix.txt") do |f|
  while line = f.gets
    $a << line.split(",").map{|s| s.to_i}
  end	
end

$rows = $a.length
$cols = $a[0].length

def min_path(row, col)
  cur = $a[row][col]
  if row == $rows-1 and col == $cols-1 then
    return cur
  else
    unless $h[[row,col]] then
	if row < $rows-1 and col < $cols-1 then
		$h[[row,col]] = cur+[min_path(row+1,col),min_path(row,col+1)].min
	elsif row == $rows-1 then
		$h[[row,col]] = cur + min_path(row,col+1)
	elsif col == $cols-1 then
		$h[[row,col]] = cur + min_path(row+1,col)
	else
		puts "wtf"
	end		
    end
    return $h[[row,col]]
  end
end

puts min_path(0,0)
