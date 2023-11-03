import Data.Time.Calendar.Easter (gregorianEaster)

quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x : xs) = quickSort lesser ++ equal ++ quickSort greater
  where
    (lesser, equal, greater) = part x xs ([], [x], [])

part :: (Ord a) => a -> [a] -> ([a], [a], [a]) -> ([a], [a], [a])
part _ [] (l, e, g) = (l, e, g)
part p (x : xs) (l, e, g)
  | x > p = part p xs (l, e, x : g)
  | x < p = part p xs (x : l, e, g)
  | otherwise = part p xs (l, x : e, g)

main :: IO ()
main = do
  let unsortedList = [5, 3, 8, 1, 2, 6, 7, 4]
  let sortedList = quickSort unsortedList
  print sortedList
