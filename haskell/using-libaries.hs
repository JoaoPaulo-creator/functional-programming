module Main where

import Data.Map qualified as M

errorsPerLine = M.fromList [("Chris", 472), ("Don", 100), ("Simon", -5)]

main = do
  putStrLn "Who are ya?"
  name <- getLine
  case M.lookup name errorsPerLine of
    Nothing -> putStrLn "I dont know ya"
    Just n -> do
      putStr "Errors per line: "
      print n