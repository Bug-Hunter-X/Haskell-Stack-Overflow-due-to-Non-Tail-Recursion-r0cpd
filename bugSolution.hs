```haskell
import Data.List (nub)

main :: IO ()
main = do
  let xs = [1..100000]
  let ys = nub xs
  print ys --This will not cause stack overflow
```