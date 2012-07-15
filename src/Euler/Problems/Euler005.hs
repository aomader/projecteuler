module Euler.Problems.Euler005
    (
      euler005
    ) where

euler005 :: () -> Int
euler005 _ = foldl1 lcm [11..20]

