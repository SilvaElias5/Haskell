media a = (sum a) / fromIntegral(length a)

sumaprod (x:xs) (y:ys) xmedia ymedia = (x-xmedia) * (y-ymedia) + sumaprod xs ys xmedia ymedia
sumaprod [] _ _ _ = 0
sumaprod _ [] _ _ = 0

sumacuad (x:xs) xmedia = (xmedia)**2 + sumacuad xs xmedia
sumacuad [] xmedia = 0

va listax listay = (sumaprod listax listay (media listax) (media listay)) / (sumacuad listax (media listax))
vb listax listay = (media listay) - (va listax listay)*(media listax)

regresion listax listay = ((va listax listay),(vb listax listay))
