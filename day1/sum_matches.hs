import System.IO  
import Control.Monad

main = do  
        contents <- readFile "input.txt"
        --print contents
        --print . lines $ contents -- Use Haskell's lines function to strip \n
        -- But lines() now encloses the string in a list
        let line1 = words contents
        --print (line1 !! 0)
        --print . map readInt . map (\c -> [c]) $ (line1 !! 0)
-- alternately, main = print . map readInt . words =<< readFile "test.txt"
readInt :: String -> Int
readInt = read
