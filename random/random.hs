import System.Random

main = do
  {-g <- getStdGen
  let generator = mkStdGen 0
  let {rs = randomRs ('1', '8') generator}
  print (take 10 rs)
  let {(a:rs') = rs}
  putStrLn (show a)
  putStrLn (show a)-}
  r <- randomRIO (0,6)
  print r
  r2 <- randomRIO (7,9)
  print r2
{-
ghc --make "random.hs" (in directory: /home/mr-fool/Documents/haskell/random)
[1 of 1] Compiling Main             ( random.hs, random.o )
random.hs:11:8:
    No instance for (Random a0) arising from a use of ‘randomRIO’
    The type variable ‘a0’ is ambiguous
    Note: there are several potential instances:
      instance Random Bool -- Defined in ‘System.Random’
      instance Random Foreign.C.Types.CChar -- Defined in ‘System.Random’
      instance Random Foreign.C.Types.CDouble
        -- Defined in ‘System.Random’
      ...plus 33 others
    In a stmt of a 'do' block: r <- randomRIO (0, 6)
    In the expression:
      do { r <- randomRIO (0, 6);
           print r;
           r2 <- randomRIO (7, 9);
           print r2 }
    In an equation for ‘main’:
        main
          = do { r <- randomRIO (0, 6);
                 print r;
                 r2 <- randomRIO (7, 9);
                 .... }
random.hs:11:19:
    No instance for (Num a0) arising from the literal ‘0’
    The type variable ‘a0’ is ambiguous
    Note: there are several potential instances:
      instance Num Double -- Defined in ‘GHC.Float’
      instance Num Float -- Defined in ‘GHC.Float’
      instance Integral a => Num (GHC.Real.Ratio a)
        -- Defined in ‘GHC.Real’
      ...plus 37 others
    In the expression: 0
    In the first argument of ‘randomRIO’, namely ‘(0, 6)’
    In a stmt of a 'do' block: r <- randomRIO (0, 6)
random.hs:12:3:
    No instance for (Show a0) arising from a use of ‘print’
    The type variable ‘a0’ is ambiguous
    Relevant bindings include r :: a0 (bound at random.hs:11:3)
    Note: there are several potential instances:
      instance Show StdGen -- Defined in ‘System.Random’
      instance Show Double -- Defined in ‘GHC.Float’
      instance Show Float -- Defined in ‘GHC.Float’
      ...plus 65 others
    In a stmt of a 'do' block: print r
    In the expression:
      do { r <- randomRIO (0, 6);
           print r;
           r2 <- randomRIO (7, 9);
           print r2 }
    In an equation for ‘main’:
        main
          = do { r <- randomRIO (0, 6);
                 print r;
                 r2 <- randomRIO (7, 9);
                 .... }
random.hs:13:9:
    No instance for (Random a1) arising from a use of ‘randomRIO’
    The type variable ‘a1’ is ambiguous
    Note: there are several potential instances:
      instance Random Bool -- Defined in ‘System.Random’
      instance Random Foreign.C.Types.CChar -- Defined in ‘System.Random’
      instance Random Foreign.C.Types.CDouble
        -- Defined in ‘System.Random’
      ...plus 33 others
    In a stmt of a 'do' block: r2 <- randomRIO (7, 9)
    In the expression:
      do { r <- randomRIO (0, 6);
           print r;
           r2 <- randomRIO (7, 9);
           print r2 }
    In an equation for ‘main’:
        main
          = do { r <- randomRIO (0, 6);
                 print r;
                 r2 <- randomRIO (7, 9);
                 .... }
random.hs:13:20:
    No instance for (Num a1) arising from the literal ‘7’
    The type variable ‘a1’ is ambiguous
    Note: there are several potential instances:
      instance Num Double -- Defined in ‘GHC.Float’
      instance Num Float -- Defined in ‘GHC.Float’
      instance Integral a => Num (GHC.Real.Ratio a)
        -- Defined in ‘GHC.Real’
      ...plus 37 others
    In the expression: 7
    In the first argument of ‘randomRIO’, namely ‘(7, 9)’
    In a stmt of a 'do' block: r2 <- randomRIO (7, 9)
random.hs:14:3:
    No instance for (Show a1) arising from a use of ‘print’
    The type variable ‘a1’ is ambiguous
    Relevant bindings include r2 :: a1 (bound at random.hs:13:3)
    Note: there are several potential instances:
      instance Show StdGen -- Defined in ‘System.Random’
      instance Show Double -- Defined in ‘GHC.Float’
      instance Show Float -- Defined in ‘GHC.Float’
      ...plus 65 others
    In a stmt of a 'do' block: print r2
    In the expression:
      do { r <- randomRIO (0, 6);
           print r;
           r2 <- randomRIO (7, 9);
           print r2 }
    In an equation for ‘main’:
        main
          = do { r <- randomRIO (0, 6);
                 print r;
                 r2 <- randomRIO (7, 9);
                 .... }
Compilation failed.
_]
