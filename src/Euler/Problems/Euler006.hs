module Euler.Problems.Euler006
    (
      euler006
    ) where

euler006 :: () -> Int
euler006 _ = let n = 100
              in (n*(n + 1) `div` 2)^(2::Int) - foldl1 (\a i -> a + i^(2::Int)) [1..n]

