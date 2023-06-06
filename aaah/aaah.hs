
readInput :: String -> [String]
readInput =  lines 

solve :: [String] -> String
solve [jon, req] = case length jon < length req of
    True -> "no" 
    _    -> "go"

writeOutput :: String -> String
writeOutput = id 

main = interact $ (writeOutput . solve . readInput)