-- |função map e filter

mapeia_fibo vet = map fibo vet -- um exemplo de funcionamento da função map

filtra_primo vet = filter primo vet -- um exemplo de funcionamento da função filter


fibo 1 = 1
fibo 2 = 1
fibo n = fibo (n-1) + fibo (n-2)

primo 1 = False
primo 2 = True
primo n 
    | [x | x <- [2..n-1],mod n x == 0] == [] = True 
    | otherwise = False

