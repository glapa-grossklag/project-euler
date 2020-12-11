module Euler (
    digits,
    fibs,
    divisors,
    factorial,
    slice,
    isprime,
    primes
) where

-- | The list of digits of an Integral
digits :: Integral a => a -> [a]
digits 0 = []
digits n =
    digits (n `div` 10) ++ [n `mod` 10]

-- | The Fibonacci sequence, starting with 1
fibs :: [Integer]
fibs = 1 : 2 : zipWith (+) fibs (tail fibs)

divisors :: Integral a => a -> [a]
divisors n =
    divisors' n 1 n

divisors' :: Integral a => a -> a -> a -> [a]
divisors' n low high =
    let divs = [divisor | divisor <- [(low+1)..(ceiling . sqrt . fromIntegral) (high-1)], n `mod` divisor == 0]
    in  if null divs
            then [low, high]
        else
            low : (divisors' n (head divs) (n `div` head divs)) ++ [high]

factorial :: Integral a => a -> a
factorial n = product [1..n]

slice :: Int -> Int -> [a] -> [a]
slice from to l = take (to - from + 1) (drop from l)

-- | Primality test using trial division
isprime :: Integral a => a -> Bool
isprime n = all (\x -> n `mod` x /= 0) [2..(floor . sqrt . fromIntegral) n]

primes :: [Integer]
primes = [n | n <- [2..], isprime n]
