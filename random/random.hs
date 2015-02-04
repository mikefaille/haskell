import System.Random

main = do
  g <- getStdGen
  let (a:rs') = randomRs ('1', '8') g
  print (take 10 rs)
  let (a, rs') = rs
  putStrLn (show a) {- do more stuff with rs' here -}
--randomRIO (0,6) :: Int >>= print
-{
ghc --make "random.hs" (in directory: /home/mr-fool/Documents/haskell/random)
[1 of 1] Compiling Main             ( random.hs, random.o )
random.hs:6:18:
    Not in scope: ‘rs’
    Perhaps you meant ‘rs'’ (line 5)
random.hs:7:18:
    Not in scope: ‘rs’
    Perhaps you meant ‘rs'’ (line 7)
Compilation failed.
-}
