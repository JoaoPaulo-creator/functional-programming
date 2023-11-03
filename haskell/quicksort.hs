quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x : xs) =
  let left = quickSort [a | a <- xs, a <= x]
      right = quickSort [a | a <- xs, a > x]
   in left ++ [x] ++ right

main :: IO ()
main = do
  putStrLn "Enter a list of numbers separated by spaces: "
  input <- getLine
  let numbers = map read (words input) :: [Int]
  let sortedNumbers = quickSort numbers
  putStrLn ("The sorted list id: " ++ show sortedNumbers)
