"""
A collection of common functions for the Project Euler problems.
"""
import sys
from functools import cache
from math import floor, ceil, sqrt
from typing import Generator


@cache
def isPrime(n: int) -> bool:
    """
    Return True if n is prime, else False.
    """
    # First check if n is even.
    if n % 2 == 0:
        return False
    # Check all odd integers < sqrt(n)
    for m in range(3, floor(sqrt(n)), 2):
        if n % m == 0:
            return False
    return True


@cache
def primes() -> Generator[int, None, None]:
    """
    Generate a list of prime numbers.
    """
    n = 3
    while True:
        if isPrime(n):
            yield n
        n += 2


@cache
def fibs() -> Generator[int, None, None]:
    """
    Generate the Fibonacci sequence.
    """
    a = 0
    b = 1
    while True:
        n = a + b
        a = b
        b = n
        yield n


@cache
def divisors(n: int) -> list[int]:
    """
    Return a list of the divisors of `n`.
    """
    return _divisors(n, 1, n)


@cache
def _divisors(n: int, low: int, high: int) -> list[int]:
    """
    Return a list of the divisors of `n` greater than `low` and less than `high`.

    Helper function for `divisors()`.
    """
    for divisor in range(low + 1, ceil(sqrt(high - 1))):
        if n % divisor == 0:
            return [low] + _divisors(n, divisor, (n // divisor)) + [high]
    else:
        return [low, high]


@cache
def digits(n: int) -> list[int]:
    """
    Return a list of the digits of `n`, assuming `n` is in base 10.
    """
    if n == 0:
        return []
    else:
        return digits(n // 10) + [n % 10]


class setrecursionlimit:
    """
    A context manager to temporarily increase the maximum recursion depth.
    """

    def __init__(self, limit):
        self.limit = limit
        self.old_limit = sys.getrecursionlimit()

    def __enter__(self):
        sys.setrecursionlimit(self.limit)

    def __exit__(self, type, value, tb):
        sys.setrecursionlimit(self.old_limit)
