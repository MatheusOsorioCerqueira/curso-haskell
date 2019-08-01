data Arvore = Null | No Int Arvore Arvore



adicionar_valor num Null = No num Null Null
adicionar_valor num (No n esq dir) 
    |num > n = No n esq (adicionar_valor num dir)
    |otherwise = No n (adicionar_valor num esq) dir
    

em_ordem :: Arvore -> [Int]
em_ordem Null = []
em_ordem (No x esq dir) = em_ordem esq ++ [x] ++ em_ordem dir