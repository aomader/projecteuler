module Euler.Problems.Euler009
    (
      euler009
    ) where

euler009 :: () -> Int
euler009 _ = head [2*m*n*(m^4 - n^4) | m <- [2..32], n <- [1..(m-1)], m^2 + m*n == 500]

