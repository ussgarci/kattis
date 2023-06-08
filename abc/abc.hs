import Data.List

readInput :: String -> [String]
readInput = lines

solve :: [String] -> [String]
solve [xs, ys] = map f ys
    where
        (a:b:c:[]) = sort $ map read (words xs) :: [Int]
        f = \x -> case x of 
            'A' -> show a
            'B' -> show b
            'C' -> show c

writeOutput :: [String] -> String
writeOutput = intercalate " "

main = interact $ (writeOutput . solve . readInput)