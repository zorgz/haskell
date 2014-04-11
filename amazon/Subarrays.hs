import Data.List (sort)
--
findSubarrays ::(Num a, Ord a) =>  [a] -> ([a],[a])
findSubarrays x = divideSorted (reverse $ sort x) 0 0 ([],[])

divideSorted ::(Num a, Ord a) =>  [a] -> a -> a -> ([a], [a]) -> ([a],[a])
divideSorted [] _ _ (f,s) = (f,s)
divideSorted (x:y:xs) _ _ ([],[]) = divideSorted xs x y ([x], [y])
divideSorted (x:xs) fcnt scnt (f,s) =
	let firstIsLarger = abs (fcnt + x) > abs (scnt + x)
 	in if firstIsLarger then divideSorted xs fcnt (scnt+x) (f, s ++ [x])
 	   else divideSorted xs (fcnt+x) scnt (f ++ [x], s)
