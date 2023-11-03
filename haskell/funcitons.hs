module Main where

factorial n = if n == 0 then 1 else n * factorial (n - 1)

main = do
  putStrLn "What is 5! ?"
  x <- readLn
  if x == factorial 5
    then putStrLn "acerto miseravi"
    else putStrLn "errou feio errou rude"