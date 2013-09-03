-- Problem 5
-- Reverse a list.
--
-- Example:
-- Prelude> myReverse "A man, a plan, a canal, panama!"
-- "!amanap ,lanac a ,nalp a ,nam A"
--
-- Prelude> myReverse [1,2,3,4]
-- [4,3,2,1]

-- This is highly unpractical because the operator ++ needs
-- to traverse the whole list to append.
-- Anyway, it works!
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = (myReverse xs) ++ [x]

-- There's an optimized version, which keeps an accumulator
-- between iterations, thus being of O(n).
myReverse' :: [a] -> [a]
myReverse' list = myReverseAcc list []
  where
    myReverseAcc [] acc     = acc
    myReverseAcc (x:xs) acc = myReverseAcc xs (x:acc)

