"""
https://projecteuler.net/problem=4
"""
from Euler import digits


def isPalindrome(n: int) -> bool:
    return digits(n)[::-1] == digits(n)


solution = max([n * m
                for n in range(100, 1000)
                for m in range(100, 1000)
                if isPalindrome(n * m)])


if __name__ == "__main__":
    print(solution)
