main = do

	--taking sides input
	
	putStrLn "Please enter the length of a"
	a <- readLn
	putStrLn "Please enter the length of b"
	b <- readLn
	
	putStrLn "Please enter the length of c"
	c <- readLn
	
	let checking :: Int -> Int -> Int -> String
		checking a b c =
		if (a^2 + b^2 == c^2 )
			then (putStrLn "it is a right triangle")

			else (putStrLn "it is not a right triangle")
	
{-ghc --make "rightTriangle.hs" (in directory: /home/mr-fool/Documents/haskell/rightTriangle)
[1 of 1] Compiling Main             ( rightTriangle.hs, rightTriangle.o )
rightTriangle.hs:13:9: Not in scope: `checking'
rightTriangle.hs:14:9:
    The last statement in a 'do' block must be an expression
      let checking a b c
            = if (a ^ 2 + b ^ 2 == c ^ 2) then
                  (putStrLn "it is a right triangle")
              else
                  (putStrLn "it is not a right triangle")
Compilation failed.
-}
