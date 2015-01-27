main = do
    putStrLn "Please enter the temperature in celsius"
    temperature <- getLine
    let celsius = read temperature :: Double
    let cels2fahr a = a * 1.8 +32 
    cels2fahr celsius
    putStrLn "something"
    --let result = show (cels2fahr celsius)
    --putStrLn ("The temperature in fahrenheit " ++ result)
  

  
-{
ghc --make "temperature.hs" (in directory: /home/mr-fool/Documents/haskell/temperature)
[1 of 1] Compiling Main             ( temperature.hs, temperature.o )
temperature.hs:6:15:
    Couldn't match expected type ‘IO a0’ with actual type ‘Double’
    In the first argument of ‘cels2fahr’, namely ‘celsius’
    In a stmt of a 'do' block: cels2fahr celsius
Compilation failed.

}-
