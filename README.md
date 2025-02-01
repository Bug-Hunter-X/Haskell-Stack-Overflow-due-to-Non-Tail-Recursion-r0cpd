# Haskell Stack Overflow Bug

This repository demonstrates a common error in Haskell: writing non-tail-recursive functions that can lead to stack overflow errors when processing large inputs. The example involves removing duplicates from a list.

The `bug.hs` file contains the buggy code; `bugSolution.hs` provides the correct, efficient solution.

## How to reproduce:

1.  Clone this repository.
2.  Compile and run `bug.hs` using a Haskell compiler (GHC): `ghc bug.hs && ./bug`
3.  Observe the stack overflow error when the input list is large.
4.  Compile and run `bugSolution.hs` to see the correct, efficient solution.

## Understanding the Problem:

The problem lies in the `slowNub` function in `bug.hs`. It's not tail-recursive because the recursive call (`slowNub (filter (/=x) xs)`) is not the last operation performed. This means that each recursive call adds a new stack frame, leading to stack overflow for large inputs.

## Solution:

The solution uses the built-in `nub` function from `Data.List`, which is optimized and tail-recursive, preventing stack overflows.