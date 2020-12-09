-- https://projecteuler.net/problem=4 
-- Find the largest palindrome made from the product of two 3-digit numbers.

import Euler

-- | Is n palindromic?
isPal :: Integral a => a -> Bool
isPal n =
    d == reverse d
    where d = digits n

-- | The list of all palnidromic products of two 3-digit integers
palindromes :: [Int]
palindromes = [p | a <- [100..999], b <- [100..999], let p = a * b, isPal p]

-- | Largest palindrome
-- | (906609)
solution :: Int
solution = maximum palindromes

main =
    print solution