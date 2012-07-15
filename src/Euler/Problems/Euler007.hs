module Euler.Problems.Euler007
    (
      euler007
    ) where

import Data.Numbers.Primes (primes)

euler007 :: () -> Int
euler007 _ = primes !! 10000

