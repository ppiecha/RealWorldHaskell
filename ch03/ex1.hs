{-
Write a function that computes the number of elements in a list. 
To test it, ensure that it gives the same answers as the standard length function
-}

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs