elementAt::(Integral b)=>[a]->b->a
elementAt [] b =  error "Empty list given"
elementAt (x:xs) 1 = x
elementAt (x:xs) b = elementAt xs (b-1)
