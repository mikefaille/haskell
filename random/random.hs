import System.Random

main = do
  g <- getStdGen
  let generator = mkStdGen 0
  let {rs = randomRs ('1', '8') generator}
  print (take 10 rs)
  let {(a:rs') = rs}
  putStrLn (show a)
  putStrLn (show a)
  {-r <- randomRIO (0,6)
  print r
  r2 <- randomRIO (7,9)
  print r2 -}
