import Control.Applicative
import Data.List

-- 2: last but one element of the list
-- recursion 
myButLast :: [a] -> a

myButLast [x,_] = x
myButLast (_:xs) = myButLast xs

-- function composition
myButLast' :: [a] -> a
myButLast' = last . init


-- 3: element at
elementAt :: [a] -> Int -> a
elementAt [] _ = error "empty list" 
elementAt xs k = xs !! (k-1)

elementAt' :: [a] -> Int -> a
elementAt' (x:_) 1 = x
elementAt' (x:xs) k 
 | k < 1 = error "Index error"
 | otherwise = elementAt xs (k-1)

elementAt'' :: [a] -> Int -> a
elementAt'' (x:_) 1 = x
elementAt'' (_:xs) k = elementAt xs (k-1)
elementAt'' _ _ = error "Wrong indexes"
	
--4  : length 
length' :: [a] -> Int 
length' [] = 0
length' (x:xs) = 1 + length xs
-- first of last tuple in a list of given list zipped inf sequence
length'' = fst . last . zip [1..]


--5 
reverse' :: [a] -> [a]
reverse' [] = []
reverse' [x] = [x]
reverse' (x:xs) = reverse xs ++ [x]

-- 6 palyndrome
isPalindrome' :: (Eq a) => [a] -> Bool
isPalindrome' x = (x == (reverse' x))

isPalindrome'' :: (Eq a) => [a] -> Bool
isPalindrome'' = (==) Control.Applicative.<*> reverse

-- 7 nested list 
data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem a) = [a]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)
flatten (List [])     = []


-- 8 : compress list 
compress :: (Eq a) => [a] -> [a]
compress [] = []
compress [a] = [a]
compress (f:xs) =  [f] ++ ccc xs f 
	where ccc [] _ = []
	      ccc (y:ys) p = (if (y==p) then ccc ys p else [y] ++ ccc ys y)

compress' :: Eq a => [a] -> [a]
compress' = map head . group	      











