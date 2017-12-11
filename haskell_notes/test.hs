-- Use double dash for inline comments
{- Multiline comments
are formatted with these characters -}
main = do putStrLn "What is 2 + 2?"
          -- Indentation (via spaces) is significant
          x <- readLn
          if x == 4
                then putStrLn "You're right!"
                else putStrLn "You're wrong!"
