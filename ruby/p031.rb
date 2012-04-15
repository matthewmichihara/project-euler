#!/usr/bin/env ruby
# such crappy code... sigh.

count = 0
(0..200).each do |one|
	(0..100).each do |two|
		break if one + two*2 > 200
		(0..40).each do |five|
			break if one + two*2 + five*5 > 200
			(0..20).each do |ten|
				break if one + two*2 + five*5 + ten*10 > 200
				(0..10).each do |twenty|
					break if  one + two*2 + five*5 + ten*10 + twenty*20 > 200
					(0..4).each do |fifty|
						break if one + two*2 + five*5 + ten*10 + twenty*20 + fifty*50 > 200
						(0..2).each do |onehun|
							break if one + two*2 + five*5 + ten*10 + twenty*20 + fifty*50 + onehun*100 > 200
							(0..1).each do |twohun|
								if one + two*2 + five*5 + ten*10 + twenty*20 + fifty*50 + onehun*100 +twohun*200 == 200
									count += 1
									puts "#{one} #{two} #{five} #{ten} #{twenty} #{fifty} #{onehun} #{twohun}"
									break
								end
							end
						end
					end
				end
			end
		end
	end
end

puts count
