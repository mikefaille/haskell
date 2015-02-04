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
  let randomize = randomRIO (0, 6) :: IO Int
  r <- randomize
  print r
  print r
