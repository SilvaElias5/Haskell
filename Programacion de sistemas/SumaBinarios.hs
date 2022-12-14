suma' :: [Int] -> [Int] -> Int -> [Int]                 --Se implementa suma prima el cual rescibe dos listas y acarreo inciado en 0
suma' xs [] ac = if ac == 0 then xs else suma' xs [1] 0 -- Se generan los casos base  para las listas vacias
suma' [] ys ac = if ac == 0 then ys else suma' ys [1] 0
suma' xs ys ac = suma' (init xs) (init ys) ac' ++ [d]   -- Se llama de nuevo suma pero ahora usando init en cada lista para eliminar el ultimo concate
  where                                                 -- con d
    v = last xs + last ys + ac                          -- donde se genera la variable v que se suma el ultimo elemento de las listas + ac 
    (ac', d) = divMod v 2                               -- la función divMod devuelve una tupla que contiene el resultado de la división integral y  módulo
