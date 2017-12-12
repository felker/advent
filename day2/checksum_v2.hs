import System.IO  
import Control.Monad
import qualified Data.Text as T

main = do  
        contents <- readFile "input.txt"
        --print contents
        --print . lines $ contents -- Use Haskell's lines function to strip \n
        -- But lines() now encloses the string in a list, i.e.
        -- [["l", "i", "n", "e"]]
        let line_list = map T.pack . lines $ contents
        --print line_list
        let string_list = (map.map) T.unpack (map (T.split (=='\t') ) line_list)
        let vals_list = (map.map) readInt string_list
        --print $ map (+) $ (((map) (maximum) vals_list) - ((map) (minimum)
        --vals_list))
        print $ sum $ map (checksum) vals_list
        -- print vals_list
        -- print $ map (+) (map (maximum - minimum) vals_list)
        --print (line_list !! 0)
        --print . sum_matches 1 $ line1_int
        
-- alternately, main = print . map readInt . words =<< readFile "test.txt"
readInt :: String -> Int
readInt = read

checksum :: [Int] -> Int
-- O(n^2) complexity solution
-- Each list entry must exclude itself from the search for a pair, e.g. for
-- a == b
checksum xs = head [ a `div` b | a <- xs, b <- xs, a `mod` b == 0 && a /= b]
