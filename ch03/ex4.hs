{-
Turn a list into a palindrome, 
i.e. it should read the same both backwards and forwards. 
For example, given the list [1,2,3], your function should return [1,2,3,3,2,1]
-}

palindrome [] = []
palindrome (x:xs) = [x] ++ palindrome xs ++ [x]