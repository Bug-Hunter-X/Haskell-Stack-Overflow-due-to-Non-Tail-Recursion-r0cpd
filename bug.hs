```haskell
import Data.List (nub)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = nub xs
  print ys -- Output: [1,2,3,4,5]
  let zs = [1,1,2,2,3,3]
  let ws = nub zs
  print ws -- Output: [1,2,3]

-- This function will cause a stack overflow if the input list is too large
-- because it's not tail-recursive.
slowNub :: (Eq a) => [a] -> [a]
slowNub [] = []
slowNub (x:xs) = x : slowNub (filter (/=x) xs)

main2 :: IO ()
main2 = do
  let xs = [1..100000]
  let ys = slowNub xs  --Stack overflow
  print ys
```