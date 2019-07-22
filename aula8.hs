-- |Tuplas sao estaticas, para obter os valores de
-- |tuplas especificas é necessário criar funções

fst3 (x , _ , _) = x
snd3 (_, y, _) = y
trd3 (_, _, z) = z