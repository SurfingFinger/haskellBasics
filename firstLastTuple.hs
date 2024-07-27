-- Code a function that returns the first and last elements of a list as a 2-tuple (a pair).

firstLast :: [a] -> (a, a)
firstLast [] = error "Can't use an empty list here"
firstLast [x] = error "You need a list with at least two items"
firstLast (x:xs) = ( x , last (xs))