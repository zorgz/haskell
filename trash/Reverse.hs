rev' :: [a] -> [a]
rev' x = case x of 
	 	[] -> []
	 	[x] -> [x]
	 	(x:xs) -> rev' xs ++ [x]
