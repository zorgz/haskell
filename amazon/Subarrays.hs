import Data.List (sort)
--
findSubarrays ::(Num a, Ord a) =>  [a] -> ([a],[a])
findSubarrays x = divideSorted (reverse $ sort x) 0 0 ([],[])

divideSorted ::(Num a, Ord a) =>  [a] -> a -> a -> ([a], [a]) -> ([a],[a])
divideSorted [] _ _ (f,s) = (f,s)
divideSorted (x:y:xs) _ _ ([],[]) = divideSorted xs (abs x) (abs y) ([x], [y])
divideSorted (x:xs) fcnt scnt (f,s) =
	let absx = abs x
	    firstIsLarger = (fcnt + absx) > abs (scnt + absx)
 	in if firstIsLarger then divideSorted xs fcnt (scnt+absx) (f, s ++ [x])
 	   else divideSorted xs (fcnt+absx) scnt (f ++ [x], s)
