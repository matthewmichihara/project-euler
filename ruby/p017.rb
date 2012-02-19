#!/usr/bin/env ruby

#-------------------------------------------------------------------------------
# If the numbers 1 to 5 are written out in words: one, two, three, four, five,
# then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in
# words, how many letters would be used?
#
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and
# forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20
# letters. The use of "and" when writing out numbers is in compliance with
# British usage.
#-------------------------------------------------------------------------------

hash = Hash.new
hash[0] = ""
hash[1] = "one"
hash[2] = "two"
hash[3] = "three"
hash[4] = "four"
hash[5] = "five"
hash[6] = "six"
hash[7] = "seven"
hash[8] = "eight"
hash[9] = "nine"
hash[10] = "ten"
hash[11] = "eleven"
hash[12] = "twelve"
hash[13] = "thirteen"
hash[14] = "fourteen"
hash[15] = "fifteen"
hash[16] = "sixteen"
hash[17] = "seventeen"
hash[18] = "eighteen"
hash[19] = "nineteen"
hash[20] = "twenty"
hash[30] = "thirty"
hash[40] = "forty"
hash[50] = "fifty"
hash[60] = "sixty"
hash[70] = "seventy"
hash[80] = "eighty"
hash[90] = "ninety"
hash[100] = "hundred"
hash[1000] = "thousand"

sum = 0
for i in 1...1000
  num_string = ""
  if i % 100 == 0
    num_string = hash[i/100] + hash[100]
  elsif i % 10 == 0
    if i < 100
      num_string = hash[i]
    else
      num_string = hash[i/100] + hash[100] + "and" + hash[i - ((i/100) * 100)]
    end
  else
    if i < 20
      num_string = hash[i]
    elsif i < 100
      num_string = hash[(i/10) * 10] + hash[i - ((i/10) * 10)]
    elsif i % 100 < 20
      num_string = hash[i/100] + hash[100] + "and" + hash[i % 100]
    else
      num_string = hash[i/100] + hash[100] + "and" + hash[((i % 100)/10) * 10]
      num_string += hash[i % 10]
    end
  end
  puts i.to_s + " " + num_string
  sum += num_string.length
end

sum += "onethousand".length
puts sum
