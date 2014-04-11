import Data.List (sort)  
-- 
divide' ::(Num a, Ord a) =>  [a] -> ([a], [a]) -> ([a],[a])
divide' [] (f,s) = (f,s)
divide' (x:y:xs) ([],[]) = divide' xs ([x], [y])
divide' (x:xs) (f,s) = 
	let fs = f ++ [x]
	    ss = s ++ [x]
	    firstIsLarger = sum fs > sum ss
 	in if firstIsLarger then divide' xs (f,ss) else divide' xs (fs, s)
