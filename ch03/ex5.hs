myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

isPalindrome xs = xs == myReverse xs