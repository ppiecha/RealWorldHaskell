{-	
Create a function that sorts a list of lists based on the length of each sublist. 
(You may want to look at the sortBy function from the Data.List module.)
-}

import Data.List

myCompare a b 
     | length a < length b = LT
     | length a == length b = EQ
     | otherwise = GT



nestedSort :: [[a]] -> [[a]]
nestedSort xs = sortBy myCompare xs