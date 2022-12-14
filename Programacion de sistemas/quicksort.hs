quicksort [] = []
quicksort (x:xs) =
    let menores = quicksort(filter (<=x)xs)
        mayores = quicksort(filter(>x)xs)
    in menores ++ [x] ++ mayores
