-- Problem 2
-- Find the last but one element of a list.
--
-- Example:
-- Prelude> myButLast [1,2,3,4]
-- 3
--
-- Prelude> myButLast ['a'..'z']
-- 'y'

-- My pattern-matching didn't work, I still don't know why...
-- Anyways, that's not an elegant solution.
--
-- myButLast []       = []
-- myButLast (x:[])   = []
-- myButLast (x:y:[]) = x
-- myButLast (x:y:ys) = myButLast ys

-- Here's the solution from the site
myButLast = last . init

-- It's far better because it uses two nice concepts:
-- 1. Pointfree Style
-- 2. Function composition
--
-- Pointfree style hides the argument from the body of
-- the function. The solution above could've been:
--
-- myButLast x = (last . init) x
--
-- But the argument is implied.
--
-- Also, function composition with the `.` operator works
-- like a pipe on UNIX systems, only backwards.
--
-- (a . b . c) [1..10]
--
-- Is just like:
--
-- c [1..10] | b | a

