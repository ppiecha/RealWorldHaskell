--Write a function that determines whether its input list is a palindrome

myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

isPalindrome xs = xs == myReverse xs