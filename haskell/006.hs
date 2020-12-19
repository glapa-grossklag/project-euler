-- https://projecteuler.net/problem=6
-- Find the difference between the sum of the squares of the first one hundred
-- natural numbers and the square of the sum.

sumOfSquares :: Int
sumOfSquares = sum [n^2 | n <- [1..100]]

squareOfSum :: Int
squareOfSum = (sum [1..100])^2

solution :: Int
solution = abs (sumOfSquares - squareOfSum)

main :: IO()
main =
    print solution