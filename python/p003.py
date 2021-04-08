from Euler import isPrime, divisors


solution = max(filter(isPrime, divisors(600851475143)))


if __name__ == "__main__":
    print(solution)
