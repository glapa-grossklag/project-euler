from typing import Generator
from itertools import takewhile
from Euler import fibs


solution = sum([n
                for n in takewhile(lambda m: m < 4000000, fibs())
                if n % 2 == 0])

if __name__ == "__main__":
    print(solution)
