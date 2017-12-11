import System.IO  
import Control.Monad

main = do  
        contents <- readFile "input.txt"
        --print contents
        --print . lines $ contents -- Use Haskell's lines function to strip \n
        -- But lines() now encloses the string in a list, i.e.
        -- [["l", "i", "n", "e"]]
        let line1 = words contents
        --print (line1 !! 0)
        --print . map readInt . map (\c -> [c]) $ (line1 !! 0)
        let line1_int = map readInt . map (\c -> [c]) $ (line1 !! 0)
        -- cycle by half the list length
        print . sum_matches ((length line1_int) `div` 2) $ line1_int
        
-- alternately, main = print . map readInt . words =<< readFile "test.txt"
readInt :: String -> Int
readInt = read

-- can't use foldl directly, since the modified sum stencil depends on 2 points
-- in list
sum' :: (Num a) => [a] -> a  
sum' xs = foldl (\acc x -> acc + x) 0 xs

-- define a new simple function based on zipWith
sum_matches ncompare xs = sum $ zipWith (\val1 val2 -> if val1 == val2 then val1 else 0) xs (drop ncompare $ cycle xs)
