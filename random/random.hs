import System.Random

main = do
  g <- getStdGen
  print $ take 10 (randomRs ('1', '8') g)
  let a = randomRs ('1', '8')
  putStrLn (show(a) )
-{
ghc --make "random.hs" (in directory: /home/mr-fool/Documents/haskell/random)
[1 of 1] Compiling Main             ( random.hs, random.o )
random.hs:6:11:
    No instance for (RandomGen g0) arising from a use of ‘randomRs’
    The type variable ‘g0’ is ambiguous
    Relevant bindings include
      a :: g0 -> [Char] (bound at random.hs:6:7)
    Note: there is a potential instance available:
      instance RandomGen StdGen -- Defined in ‘System.Random’
    In the expression: randomRs ('1', '8')
    In an equation for ‘a’: a = randomRs ('1', '8')
    In the expression:
      do { g <- getStdGen;
           print $ take 10 (randomRs ('1', '8') g);
           let a = randomRs ...;
           putStrLn (show (a)) }
random.hs:7:13:
    No instance for (Show (g0 -> [Char])) arising from a use of ‘show’
    In the first argument of ‘putStrLn’, namely ‘(show (a))’
    In a stmt of a 'do' block: putStrLn (show (a))
    In the expression:
      do { g <- getStdGen;
           print $ take 10 (randomRs ('1', '8') g);
           let a = randomRs ...;
           putStrLn (show (a)) }
Compilation failed.

-}
