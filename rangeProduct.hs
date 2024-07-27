-- Code the function rangeProduct that computes according to the following examples:
        -- rangeProduct 3 5  --> 3*4*5
        -- rangeProduct 5 3  --> 0
        -- rangeProduct 6 12 --> 6*7*8*9*10*11*12
        -- rangeProduct 4 4  --> 4 
    -- Return 0 if the second argument is smaller than the first. 
    -- You decide what you want to do (if anything) for negative numbers. 
    -- Write the program without recursion first and then write it with recursion.

rangeProduct a b = if (a > b)
                        then product([0])
                        else 
                            if a == b 
                                then a
                                else product([a..b])

-- With recursion
rangeProduct' a b = if (a > b)
                        then product [0]
                        else
                            if a == b
                                then a
                                else a * (rangeProduct' (a + 1) b)