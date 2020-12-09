-- https://projecteuler.net/problem=2
-- Find the sum of the even-valued terms of the Fibonacci sequence whose values
-- do not exceed four million.

import Euler

-- | Sum of even-valued terms less than four million of the Fibonacci sequence
-- | (4613732)
solution :: Integer
solution = (sum . filter even . takeWhile (<4000000)) fibs

main :: IO()
main =
    print solution