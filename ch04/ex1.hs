{-
Write your own “safe” definitions of the standard partial list functions, 
but make sure that yours never fail. 
As a hint, you might want to consider using the following types
-}

safeHead :: [a] -> Maybe a

safeHead [] = Nothing
safeHead (x:xs) = Just x

safeTail :: [a] -> Maybe [a]

safeTail [] = Nothing
safeTail (x:xs) = Just xs

safeLast :: [a] -> Maybe a

safeLast [] = Nothing
safeLast [x] = Just x
safeLast (x:xs) = safeLast xs

safeInit :: [a] -> Maybe [a]

safeInit [] = Nothing
safeInit [x] = Nothing
safeInit (x:xs) = Just (x : case safeInit xs of
                    Just xs -> xs
                    Nothing -> []
                  )