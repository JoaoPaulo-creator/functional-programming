quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (p : xs) = quickSort lesser ++ [p] ++ quickSort greater
  where
    lesser = filter (< p) xs
    greater = filter (>= p) xs

main :: IO ()
main = do
  putStrLn "Enter a list of numbers separated by spaces: "
  input <- getLine
  let numbers = map read (words input) :: [Int]
  let sortedNumbers = quickSort numbers
  putStrLn ("The sorted list id: " ++ show sortedNumbers)
