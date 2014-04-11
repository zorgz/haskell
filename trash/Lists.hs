
-- Basic list functions impl

head' :: [a] -> a
head' [] = error "empty list"
head' (x:xs) = x


tail' :: [a] -> [a]
tail' [] = error "Empty list"
tail' (x:xs) = xs


empty' :: [a] -> Bool
empty' [] = True
empty' x  = False

