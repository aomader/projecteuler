module Euler.Problems.Euler003
    (
      euler003
    ) where

euler003 :: () -> Int
euler003 _ = fromInteger $ f (600851475143 :: Integer) primes
    where f n (p:ps) | n > 2     = f (until ((/= 0) . (`mod` p)) (`div` p) n) ps
                     | otherwise = p

primes :: Integral a => [a]
primes = sieve [2..]
  where
    sieve (p:xs) = p : sieve [x|x <- xs, x `mod` p > 0]

