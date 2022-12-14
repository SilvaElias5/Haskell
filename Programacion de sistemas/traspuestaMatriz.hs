--m1 = [[1,2],[3,4],[5,6]]
--m2 = [[1,2,3] [4,5,6] [7,8,9]]

tam matriz = (length matriz, length (head matriz))

mat_tovec matriz n m
 | n <= fst(tam matriz) = (last (take n matriz))!!m: mat_tovec matriz (n+1) m
 | n > fst (tam matriz) = []

recorre matriz m
 | m < snd (tam matriz) = (mat_tovec matriz 1 m) : (recorre matriz (m+1))
 | otherwise = []

traspuesta matriz = recorre matriz 0 
