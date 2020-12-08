-- https://projecteuler.net/problem=2
-- Find the sum of the even-valued terms of the Fibonacci sequence whose values
-- do not exceed four million.

-- | The Fibonacci sequence
fibs :: [Integer]
fibs = 1 : 2 : zipWith (+) fibs (tail fibs)

-- | Sum of even-valued terms less than four million
-- | (4613732)
solution :: Integer
solution = (sum . filter even . takeWhile (<4000000)) fibs

main :: IO()
main =
    print solution