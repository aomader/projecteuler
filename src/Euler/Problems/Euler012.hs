module Euler.Problems.Euler012
    (
      euler012
    ) where

import Data.List (group)
import Euler.Primes (primeFactors)

euler012 :: () -> Int
euler012 _ = fromIntegral $ head $ dropWhile ((<501) . divisors) $ drop 1 triangles
  where
    triangles = 1 : zipWith (+) triangles [2..]
    divisors = product . map ((+1) . length) . group . primeFactors

