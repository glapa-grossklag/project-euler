-- https://projecteuler.net/problem=3
-- What is the largest prime factor of the number 600851475143?

import Euler

solution :: Int
solution = (maximum . filter isprime . divisors) 600851475143

main =
    print solution