data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

height :: Tree a -> Int

height Empty = 0
height (Node n c1 c2) = 1 + max (height c1) (height c2)