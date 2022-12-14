busca :: [Integer] -> Integer -> Integer
busca (l:lista) x
 | x == l  =  1 +  if lista /= [] then(busca lista x) else 0
 | lista == [] = 0
 | otherwise = busca lista x

recorre lista mas elem
 | lista == [] = (mas,elem)
 | mas >= (busca lista (lista!!0)) = recorre (tail lista) mas elem
 | otherwise = recorre (tail lista) (busca lista (lista!!0)) (lista!!0)

moda lista = recorre lista 0 (lista!!0)
