module Main where

    main :: IO ()
    main = print . sum . map readInt . words =<< readFile "input.txt"
        
    readInt :: String -> Int
    readInt (head:tail) = 
        case head of
            '+' -> read tail
            _ -> read (head:tail)