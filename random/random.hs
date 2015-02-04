import System.Random

main = do
  g <- getStdGen
  print $ take 10 (randomRs (1, 8) g)
-{
ghc --make "random.hs" (in directory: /home/mr-fool/Documents/haskell/random)
[1 of 1] Compiling Main             ( random.hs, random.o )
random.hs:5:3:
    No instance for (Show a0) arising from a use of ‘print’
    The type variable ‘a0’ is ambiguous
    Note: there are several potential instances:
      instance Show StdGen -- Defined in ‘System.Random’
      instance Show Double -- Defined in ‘GHC.Float’
      instance Show Float -- Defined in ‘GHC.Float’
      ...plus 65 others
    In the expression: print
    In a stmt of a 'do' block: print $ take 10 (randomRs (1, 8) g)
    In the expression:
      do { g <- getStdGen;
           print $ take 10 (randomRs (1, 8) g) }
random.hs:5:20:
    No instance for (Random a0) arising from a use of ‘randomRs’
    The type variable ‘a0’ is ambiguous
    Note: there are several potential instances:
      instance Random Bool -- Defined in ‘System.Random’
      instance Random Foreign.C.Types.CChar -- Defined in ‘System.Random’
      instance Random Foreign.C.Types.CDouble
        -- Defined in ‘System.Random’
      ...plus 33 others
    In the second argument of ‘take’, namely ‘(randomRs (1, 8) g)’
    In the second argument of ‘($)’, namely
      ‘take 10 (randomRs (1, 8) g)’
    In a stmt of a 'do' block: print $ take 10 (randomRs (1, 8) g)
random.hs:5:30:
    No instance for (Num a0) arising from the literal ‘1’
    The type variable ‘a0’ is ambiguous
    Note: there are several potential instances:
      instance Num Double -- Defined in ‘GHC.Float’
      instance Num Float -- Defined in ‘GHC.Float’
      instance Integral a => Num (GHC.Real.Ratio a)
        -- Defined in ‘GHC.Real’
      ...plus 37 others
    In the expression: 1
    In the first argument of ‘randomRs’, namely ‘(1, 8)’
    In the second argument of ‘take’, namely ‘(randomRs (1, 8) g)’
Compilation failed.
-}
