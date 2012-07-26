module Euler.Problems.Euler010
    (
      euler010
    ) where

import Data.Numbers.Primes (primes)

euler010 :: () -> Int
euler010 _ = foldl1 (+) $ takeWhile (<2000000) primes

