import Data.List


ordena lista = sort lista

ordena_inverso lista = inverso (sort lista)

inverso :: [t] -> [t]
inverso [] = []
inverso (h:t) = inverso t ++ [h]