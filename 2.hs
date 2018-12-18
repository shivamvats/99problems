myButLast::[a]->a
myButLast [] = error "Empty list" 
myButLast (x:[]) = error "Enter longer list"
myButLast (x:y:[]) = x
myButLast (x:y:xs) = myButLast (y:xs)

-- Note that `myButLast [] = []` would result in a wrong type inference as type
-- of `a` would be inferred as a list.
