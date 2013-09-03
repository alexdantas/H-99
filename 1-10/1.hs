-- Problem 1
-- Find the last element of a list.
--
-- Example:
-- Prelude> myLast [1,2,3,4]
-- 4
-- Prelude> myLast ['x','y','z']
-- 'z'

-- This is just like a 'switch/case' statement on procedural languages.
-- If the argument is an empty list, return an empty list.
--
-- If the argument is a list with one element, followed by an empty
-- list, return that element.
--
-- If the argument is a list with one argument followed by a non-empty
-- list, apply the function to the sub-list.
--
-- It will keep going until the last element is reached.

myLast []     = []
myLast (x:[]) = x
myLast (x:xs) = myLast xs

