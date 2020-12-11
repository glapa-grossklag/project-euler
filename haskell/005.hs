-- https://projecteuler.net/problem=5
-- What is the smallest positive number that is evenly divisible by all of the
-- numbers from 1 to 20?

solution :: Int
solution = head [n | n <- [1..], all (\divisor -> n `mod` divisor == 0) [11..20]]

main =
    print solution