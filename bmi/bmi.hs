main = do
    putStrLn "Please enter your weight"
    weight <- getLine
    
    putStrLn "Please enter your height"
    height <- getLine    
    
    let numberWeight = read weight
    let numberHeight  = read height
    
    let bmiTell :: (RealFloat a) => a -> a -> String
        bmiTell weight height
            | bmi <= 18.5 = "You're underweight, you emo, you!"
            | bmi <= 25.0 = "You're supposedly normal.. Pffft, I bet you're ugly!"
            | bmi <= 30.0 = "You're fat! Lose some wieght, fatty!"
            | otherwise = "You're a whale, congratulations!"
            where bmi = weight / height ^2
    bmiTell numberWeight numberHeight
{-
ghc --make "bmi.hs" (in directory: /home/mr-fool/Documents/haskell/bmi)
[1 of 1] Compiling Main             ( bmi.hs, bmi.o )
bmi.hs:17:41:
    Could not deduce (Integral b0) arising from a use of ‘^’
    from the context (RealFloat a)
      bound by the type signature for
                 bmiTell :: RealFloat a => a -> a -> String
      at bmi.hs:11:20-52
    The type variable ‘b0’ is ambiguous
    Note: there are several potential instances:
      instance Integral Int -- Defined in ‘GHC.Real’
      instance Integral Integer -- Defined in ‘GHC.Real’
      instance Integral GHC.Types.Word -- Defined in ‘GHC.Real’
    In the second argument of ‘(/)’, namely ‘height ^ 2’
    In the expression: weight / height ^ 2
    In an equation for ‘bmi’: bmi = weight / height ^ 2
bmi.hs:17:42:
    Could not deduce (Num b0) arising from the literal ‘2’
    from the context (RealFloat a)
      bound by the type signature for
                 bmiTell :: RealFloat a => a -> a -> String
      at bmi.hs:11:20-52
    The type variable ‘b0’ is ambiguous
    Note: there are several potential instances:
      instance Num Double -- Defined in ‘GHC.Float’
      instance Num Float -- Defined in ‘GHC.Float’
      instance Integral a => Num (GHC.Real.Ratio a)
        -- Defined in ‘GHC.Real’
      ...plus three others
    In the second argument of ‘(^)’, namely ‘2’
    In the second argument of ‘(/)’, namely ‘height ^ 2’
    In the expression: weight / height ^ 2
bmi.hs:18:5:
    Couldn't match type ‘[]’ with ‘IO’
    Expected type: IO Char
      Actual type: String
    In a stmt of a 'do' block: bmiTell numberWeight numberHeight
    In the expression:
      do { putStrLn "Please enter your weight";
           weight <- getLine;
           putStrLn "Please enter your height";
           height <- getLine;
           .... }
Compilation failed.
-}
