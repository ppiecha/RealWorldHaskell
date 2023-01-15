palindrome [] = []
palindrome (x:xs) = [x] ++ palindrome xs ++ [x]