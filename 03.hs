-- Problem 3
-- Find the K'th element of a list. The first element in the list is
-- number 1.
--
-- Example:
-- Prelude> elementAt [1,2,3] 2
-- 2
-- Prelude> elementAt "haskell" 5
-- 'e'

-- This is not elegant but it works.
-- A lot of pattern-matching.
elementAt :: [a] -> Int -> a
elementAt [] _    = error "Index out of bounds"
elementAt (l:_) 1 = l
elementAt (l:ls) i
  | i < 1         = error "Index out of bounds"
  | otherwise     = elementAt ls (i - 1)


