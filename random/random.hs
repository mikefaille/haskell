import System.Random

main = do
  g <- getStdGen
  let {rs = randomRs ('1', '8') g}
  print (take 10 rs)
  let {(a:rs') = rs}
  putStrLn (show a)
  putStrLn (show a)
"2532653565"
'2'
'2'
