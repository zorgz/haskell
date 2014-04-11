  josephus n k = josephus' [1..n] k where
      josephus' xs k
          | length xs == 1 = head xs
          | otherwise      = josephus' (killnext k xs) k where
          killnext k xs = take (length xs - 1) (drop k (cycle xs))