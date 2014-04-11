-- largest palindrome of two 3-digits numbers
maximum [m | x <- [100..999], y <- [100..999], let m = x * y, show m == reverse (show m)] 