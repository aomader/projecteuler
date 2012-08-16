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
import Euler.Problems.Euler008
import Euler.Problems.Euler009
import Euler.Problems.Euler010
import Euler.Problems.Euler011
import Euler.Problems.Euler012
import Euler.Problems.Euler081

problems :: [() -> Int]
problems = [ euler001
           , euler002
           , euler003
           , euler004
           , euler005
           , euler006
           , euler007
           , euler008
           , euler009
           , euler010
           , euler011
           , euler012
           , euler081
           ]
