
-- Write the power :: Integer -> Integer -> Integer function 
-- for integers without using the exponentiation operator. 
-- Code this function first without recursion and then with recursion. 
-- Here are examples:
    -- power 3 2 gives 9,
    -- power 2 5 gives 32,
    -- power 4 3 gives 64
-- Not defined for negative inputs
-- Haven't tested on non-integers

-- non-recursive version
    -- turns out product [] == 1
power' a b = if b < 0
                then 1 / (product (replicate (-b) a))
             else product (replicate b a)

-- recursive version
recursivePower' a b = if (b == 0)
                        then 1
                      else if (b < 0)
                                then 1 / (a * recursivePower' a ((-b) -1))
                            else a * recursivePower' a (b -1)
