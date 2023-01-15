intersperse :: a -> [[a]] -> [a]

intersperse _ [] = []
intersperse _ [xs] = xs 
intersperse s (x:xs) = x ++ [s] ++ intersperse s xs
