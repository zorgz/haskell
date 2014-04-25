difference' :: (Num a) => [a] -> a

difference' x = 
 let sumSq = sum $ map (\p->p^2) x
     sqSum =  (\p->p^2) $ sum x
 in sqSum - sumSq
	