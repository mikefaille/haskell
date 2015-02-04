import System.Random

main = do
  {-g <- getStdGen
  let generator = mkStdGen 0
  let {rs = randomRs ('1', '8') generator}
  print (take 10 rs)
  let {(a:rs') = rs}
  let (a, g) = next generator 
  print a
  let (a, g) = next g 
  print a
  putStrLn (show a)-}
  r <- randomRIO (0,6) :: IO Int
  print r
  print r
  r2 <- randomRIO (7,9) :: IO Int
  print r2
1
1
7
