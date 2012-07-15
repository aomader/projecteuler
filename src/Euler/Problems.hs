module Euler.Problems
    (
      problems
    ) where

import Euler.Problems.Euler001
import Euler.Problems.Euler002
import Euler.Problems.Euler003
import Euler.Problems.Euler004
import Euler.Problems.Euler005
import Euler.Problems.Euler006
import Euler.Problems.Euler007

problems :: [() -> Int]
problems = [ euler001
           , euler002
           , euler003
           , euler004
           , euler005
           , euler006
           , euler007
           ]
