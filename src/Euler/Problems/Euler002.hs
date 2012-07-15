module Euler.Problems.Euler002
    (
      euler002
    ) where

euler002 :: () -> Int
euler002 _ = sum $ takeWhile (< 4000001) $ evenFibs' 1 1
  where
    evenFibs' a b = (a + b) : evenFibs' (a + 2*b) (2*a + 3*b)
