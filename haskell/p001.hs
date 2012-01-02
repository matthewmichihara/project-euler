main = print (sum [ x | x <- [1..999], any (== 0) [mod x 3, mod x 5]])
