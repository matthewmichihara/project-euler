fibs :: [Int]
fibs = 1 : 2 : [a + b | (a, b) <- zip fibs (tail fibs)]

isEven :: Int -> Bool
isEven n = (mod n 2) == 0

main = print (sum (takeWhile (< 4000000) (filter isEven fibs)))
