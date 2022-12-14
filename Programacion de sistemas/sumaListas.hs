sumar [] [] = []
sumar (x:xs) (y:ys) = x + y : sumar xs ys

-- [[1,2,3],[4,5,6]]          [[7,8,9],[10,11,12]]
sumarM :: [[Int]] -> [[Int]] ->[[Int]]
sumarM [] [] = []
sumarM (a:as) (b:bs) = (sumar (a)(b)):(sumarM (as)(bs))
