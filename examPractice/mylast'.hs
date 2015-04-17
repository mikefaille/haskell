mylast' :: [a] -> a
mylast' [] = error "no empty lists allow"
mylast' (_:y) = y
Prelude> :load mylast.hs
[1 of 1] Compiling Main             ( mylast.hs, interpreted )

mylast.hs:3:17:
    Couldn't match expected type `a' with actual type `[a]'
      `a' is a rigid type variable bound by
          the type signature for mylast' :: [a] -> a at mylast.hs:1:12
    In the expression: y
    In an equation for mylast': mylast' (_ : y) = y
Failed, modules loaded: none.
