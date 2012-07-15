module Euler.Problems.Euler001
    (
      euler001
    ) where

euler001 :: () -> Int
euler001 _ = sum' 3 + sum' 5 - sum' 15
  where
    sum' i = let n = 999 `div` i in i * n * (n + 1) `div` 2
