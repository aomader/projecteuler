module Main where

import Control.Monad.IO.Class (liftIO)
import Criterion (runBenchmark, nf)
import Criterion.Analysis (analyseMean)
import Criterion.Config (defaultConfig, Config, ljust, cfgPerformGC, cfgVerbosity, Verbosity(Quiet))
import Criterion.Environment (measureEnvironment)
import Criterion.Measurement (secs)
import Criterion.Monad (withConfig)
import System.Environment (getArgs)
import System.Exit (exitWith, ExitCode(ExitSuccess))

import qualified Data.Vector.Unboxed as U

import Euler.Problems (problems)

type Solution = (Int, () -> Int)

main :: IO ()
main = do
    args <- getArgs
    case args of
        ["--help"]     -> usage >> exit
        ["-h"]         -> usage >> exit
        ("--bench":ps) -> benchmark $ solutions ps
        ps             -> run $ solutions ps
  where
    usage = putStrLn "Usage: euler [--bench] [number].."
    exit = exitWith ExitSuccess

run :: [Solution] -> IO ()
run [] = return ()
run ((i,f):ps) = do
    putStrLn $ "Euler" ++ (show i) ++ ": " ++ (show $ f ())
    run ps

benchmark :: [Solution] -> IO ()
benchmark ps = withConfig cfg $ do
    env <- measureEnvironment
    loop env ps
  where
    loop _ []   = return ()
    loop e ((i,f):xs) = do
        sample <- runBenchmark e (nf f ())
        mean <- analyseMean sample $ U.length sample
        liftIO $ putStrLn $ "Euler" ++ (show i) ++ ": " ++ (secs mean)
        loop e xs
    cfg = defaultConfig { cfgPerformGC = ljust True
                        , cfgVerbosity = ljust Quiet
                        }

solutions :: [String] -> [Solution]
solutions [] = zip [1..] problems
solutions ps = foldl (\a n -> a ++ [(n, problems !! (n-1))]) [] $ map (read :: String -> Int) ps
