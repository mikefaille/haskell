main = do
    putStrLn "Do you wnat to (a)dd, (s)ubtract or (m)ultiply?"
    operation	<-	getLine
    
    putStrLn "Enter the first number."
    num1	<-	getLine
    
    putStrLn "Enter the second number."
    num2	<-	getLine
	
    let newNum1 = read num1
    let newNum2 = read num2
    let operator = case operation of
            "a" -> (+)
            "s" -> (-)
            "m" -> (*)
        
    let answer =  newNum1 operator newNum2
    putStrLn("hello")

-{
ghc --make "calculator.hs" (in directory: /home/mr-fool/Documents/haskell/calculator)
[1 of 1] Compiling Main             ( calculator.hs, calculator.o )
calculator.hs:11:19:
    No instance for (Read ((a1 -> a1 -> a1) -> a0 -> t0))
      arising from a use of ‘read’
    In the expression: read num1
    In an equation for ‘newNum1’: newNum1 = read num1
    In the expression:
      do { putStrLn "Do you wnat to (a)dd, (s)ubtract or (m)ultiply?";
           operation <- getLine;
           putStrLn "Enter the first number.";
           num1 <- getLine;
           .... }
calculator.hs:12:19:
    No instance for (Read a0) arising from a use of ‘read’
    The type variable ‘a0’ is ambiguous
    Relevant bindings include
      newNum2 :: a0 (bound at calculator.hs:12:9)
      newNum1 :: (a1 -> a1 -> a1) -> a0 -> t0
        (bound at calculator.hs:11:9)
    Note: there are several potential instances:
      instance Read a => Read (Control.Applicative.ZipList a)
        -- Defined in ‘Control.Applicative’
      instance Read () -- Defined in ‘GHC.Read’
      instance (Read a, Read b) => Read (a, b) -- Defined in ‘GHC.Read’
      ...plus 26 others
    In the expression: read num2
    In an equation for ‘newNum2’: newNum2 = read num2
    In the expression:
      do { putStrLn "Do you wnat to (a)dd, (s)ubtract or (m)ultiply?";
           operation <- getLine;
           putStrLn "Enter the first number.";
           num1 <- getLine;
           .... }
calculator.hs:14:20:
    No instance for (Num a1) arising from a use of ‘+’
    The type variable ‘a1’ is ambiguous
    Relevant bindings include
      operator :: a1 -> a1 -> a1 (bound at calculator.hs:13:9)
      newNum1 :: (a1 -> a1 -> a1) -> a0 -> t0
        (bound at calculator.hs:11:9)
    Note: there are several potential instances:
      instance Num Double -- Defined in ‘GHC.Float’
      instance Num Float -- Defined in ‘GHC.Float’
      instance Integral a => Num (GHC.Real.Ratio a)
        -- Defined in ‘GHC.Real’
      ...plus three others
    In the expression: (+)
    In a case alternative: "a" -> (+)
    In the expression:
      case operation of {
        "a" -> (+)
        "s" -> (-)
        "m" -> (*) }
Compilation failed.
-}
