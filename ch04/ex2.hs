{-
	
Write a function splitWith that acts similarly to words, 
but takes a predicate and a list of any type, 
and splits its input list on every element for which the predicate returns False.
-}
splitWith :: (a -> Bool) -> [a] -> [[a]]

splitWith _ [] = []
splitWith f (x:xs)
    | null prefix = [x] : (splitWith f xs)
    | otherwise = prefix : (splitWith f suffix)
  where (prefix, suffix) = span f (x:xs)
        