main = do
    putStrLn "Please enter your weight"
    weight <- getLine
    
    putStrLn "Please enter your height"
    height <- getLine    
    
    let numberWeight = read weight
    let numberHeight  = read height
    
    bmiTell :: (RealFloat a) => a -> a -> String
    bmiTell weight height
        | bmi <= 18.5 = "You're underweight, you emo, you!"
        | bmi <= 25.0 = "You're supposedly normal.. Pffft, I bet you're ugly!"
        | bmi <= 30.0 = "You're fat! Lose some wieght, fatty!"
        | otherwise = "You're a whale, congratulations!"
        where bmi = weight / height ^2
    bmiTell numberWeight numberHeight
-- bmi.hs:13:9: parse error on input ‘|’
