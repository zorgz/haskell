lucky :: (Integral a) => a -> String  
lucky 7 = "LUCKY NUMBER SEVEN!"  
lucky x = "Sorry, you're out of luck, pal!"   

sayMe :: (Integral a) => a -> String  
sayMe 1 = "One!"  
sayMe 2 = "Two!"  
sayMe 3 = "Three!"  
sayMe 4 = "Four!"  
sayMe 5 = "Five!"   
sayMe x = "Not between 1 and 5"  

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)  
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

mVectors :: (Num a) => (a, a) -> (a, a) -> a  
mVectors (x1, y1) (x2, y2) = (x1 * x2 + y1 * y2)  

head' :: [a] -> a  
head' [] = error "Can't call head on an empty list, dummy!"  
head' (x:_) = x  

nextHead :: [a] -> a  
nextHead [] = error "Can't call head on an empty list, dummy!"  
nextHead (x:y:_) = y

last' :: [a] -> a  
last' [] = error "Can't call head on an empty list, dummy!"  
last' [x] = x
last' (x:xs) = last' xs

