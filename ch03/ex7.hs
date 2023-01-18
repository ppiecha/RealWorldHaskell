--Define a function that joins a list of lists together using a separator value.

intersperse :: a -> [[a]] -> [a]

intersperse _ [] = []
intersperse _ [xs] = xs 
intersperse s (x:xs) = x ++ [s] ++ intersperse s xs
