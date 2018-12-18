data NestedList a = Elem a | List [NestedList a]

-- Why do we need to use `Elem` and `List` explicitly?
flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List (x:xs)) = flatten x ++ flatten( List xs )
flatten (List []) = []
