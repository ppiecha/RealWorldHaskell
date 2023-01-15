myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

mySum :: [Float] -> Float
mySum [] = 0
mySum (x:xs) = x + mySum xs

myMean [] = 0
myMean xs = (mySum xs) / (fromIntegral (myLength xs))