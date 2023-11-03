main = do
  putStrLn "hello, world"
  putStrLn ("Lista de numeros pares: " ++ show (filter even [0..2000000]))