import Data.List

myCompare a b 
     | length a < length b = LT
     | length a == length b = EQ
     | otherwise = GT



nestedSort :: [[a]] -> [[a]]
nestedSort xs = sortBy myCompare xs