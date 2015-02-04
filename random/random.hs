import System.Random

main = do
  let rs = randomRs ('1', '8') g
  print (take 10 rs); let (a, rs') = rs
  putStrLn (show a) {- do more stuff with rs' here -}
--randomRIO (0,6) :: Int >>= print
-{
random.hs:4:32: Not in scope: ‘g’
-}
