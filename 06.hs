-- Problem 6
-- Find out whether a list is a palindrome. A palindrome can be read
-- forward or backward; e.g. (x a m a x).
--
-- Example:
--
-- *Main> isPalindrome [1,2,3]
-- False
-- *Main> isPalindrome "madamimadam"
-- True
-- *Main> isPalindrome [1,2,4,8,16,8,4,2,1]
-- True

-- Simple but effective.
-- The only thing I needed to learn was that I needed to force
-- a to become an instance of `Eq`.
-- That's because it needs to be comparable
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = (xs == reverse xs)

