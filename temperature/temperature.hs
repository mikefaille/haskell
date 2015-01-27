main = do
    putStrLn "Please enter the temperature in celsius"
    temperature <- getLine
    let celsius = read temperature :: Int
    let cels2fahr a = a * 1.8 +32 
    let result = show (cels2fahr celsius)
    putStrLn ("The temperature in fahrenheit " ++ result)
  
-{
ghc --make "temperature.hs" (in directory: /home/mr-fool/Documents/haskell/temperature)
[1 of 1] Compiling Main             ( temperature.hs, temperature.o )
temperature.hs:6:24:
    No instance for (Fractional Int) arising from a use of ‘cels2fahr’
    In the first argument of ‘show’, namely ‘(cels2fahr celsius)’
    In the expression: show (cels2fahr celsius)
    In an equation for ‘result’: result = show (cels2fahr celsius)
Compilation failed.
}-
