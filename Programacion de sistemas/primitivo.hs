primitivo n 
 | n < 10 = n -- Si es menor a 10 regresa el mismo numero  CB
 | otherwise = primitivo(digitoSup n)
     --cualquier otro caso llama la misma funcion pero 
     --haciendo la operacion digitoSup 
digitoSup n
 | n < 10 = n
 | otherwise = (mod n 10) * digitoSup(div n 10)
 -- cuando llama esta funcion entra en cualquier otro caso 
 -- la recursividad por ejemplo
 -- 123 modulo 123 10 = 3 * div 123 / 10 = 12
 -- 12 modulo 12 10 = 2 * div 12/10 = 1
 -- 1 modulpo 1 10 = 1 * div 1/10 = 0
 -- desde que n es igual a 1 regresa el resultado 
 -- el cual es 3 * 2 = 6
