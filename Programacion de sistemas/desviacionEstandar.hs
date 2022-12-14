media a = (sum a) / fromIntegral(length a)

diferencia (x:xs) media1 = ((media1 - x)**2): (diferencia xs media1)
diferencia[] media1 = []

varianza lista = sum (diferencia lista (media lista)) / fromIntegral(length lista)

desvstand lista = sqrt(varianza lista)
