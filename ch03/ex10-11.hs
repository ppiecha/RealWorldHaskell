--Write a function that calculates the turn made by three 2D points and returns a Direction

import Prelude hiding (Left, Right)

data Direction = Left
               | Right
               | Straight
            deriving Show

data Point = Point Int Int

getDirection :: Point -> Point -> Point -> Direction

getDirection (Point x1 y1) (Point x2 y2) (Point x3 y3)
     | calc > 0 = Right
     | calc < 0 = Left
     | otherwise = Straight
    where calc = (x2 - x1) * (y3 - y1) - (y2 - y1) * (x3 - x1)

{-
Define a function that takes a list of 2D points and 
computes the direction of each successive triple. 
Given a list of points [a,b,c,d,e], it should begin by computing the turn made by 
[a,b,c], then the turn made by [b,c,d], then [c,d,e]. Your function should return a list of Direction.
-}

getDirections :: [Point] -> [Direction]

getDirections (p1:p2:p3:ps) = getDirection p1 p2 p3 : getDirections (p2:p3:ps)
getDirections _ = []