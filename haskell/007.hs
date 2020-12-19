-- https://projecteuler.net/problem=7
-- What is the 10001st prime number?

import Euler

solution :: Integer
solution = primes !! 10000 -- Use 10000 instead of 10001 since primes is 0-indexed

main :: IO()
main =
    print solution