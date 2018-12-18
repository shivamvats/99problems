pack :: String -> String
pack (x:[]) = [x]
pack (x:xs@(y:_)) =
    | x == y = [x, y] ++ pack
