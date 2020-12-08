-- https://projecteuler.net/problem=1
-- Find the sum of all the multiples of 3 or 5 below 1000.

-- | The set of all multiples of 3 or 5 below 1000
multiples :: [Int]
multiples = [n | n <- [1..999], n `mod` 3 == 0 || n `mod` 5 == 0]

-- | The sum of all multiples
-- | (233168)
solution :: Int
solution = sum multiples

main :: IO()
main =
    print solution