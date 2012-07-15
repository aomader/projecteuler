
module Euler.Problems.Euler004
    (
      euler004
    ) where

euler004 :: () -> Int
euler004 _ = maximum [z | x <- [1..999], y <- [x..999], let z = x*y, isPalindrome z]
  where
    isPalindrome n = let reverse' x y | y == 0    = x
                                      | otherwise = reverse' (x * 10 + y `mod` 10) (y `div` 10)
                      in n == reverse' 0 n

