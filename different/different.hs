readInput :: String -> [(Integer, Integer)]
readInput xs = map  ((\(x:y:[]) -> (read x,read y)) . words) $ lines xs

solve :: [(Integer, Integer)] -> [Integer]
solve = fmap (\(x,y) -> abs $ x - y)

writeOutput :: [Integer] -> String
writeOutput = unlines . fmap show

main = interact $ (writeOutput . solve . readInput)