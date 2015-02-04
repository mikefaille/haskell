import System.Random

main = do
  g <- getStdGen
  let a = take 1 (randomRs ('1', '8') g)
  putStrLn (show(a) )
  let b = take 1 (randomRs ('1', '8') g)
  putStrLn (show(b) )
-{
runhaskell random.hs
"7"
"7"
-}
