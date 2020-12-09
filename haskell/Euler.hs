module Euler (
digits,
fibs,
divisors,
factorial,
slice
) where

-- | The list of digits of an Integral
digits :: Integral a => a -> [a]
digits 0 = []
digits n =
    digits (n `div` 10) ++ [n `mod` 10]

-- | The Fibonacci sequence, starting with 1
fibs :: [Integer]
fibs = 1 : 2 : zipWith (+) fibs (tail fibs)

-- | The list of divisors of n
divisors :: Integral a => a -> [a]
divisors n =
    [d | d <- [1..n], n `mod` d == 0]

factorial :: Integral a => a -> a
factorial n = product [1..n]

slice :: Int -> Int -> [a] -> [a]
slice from to l = take (to - from + 1) (drop from l)