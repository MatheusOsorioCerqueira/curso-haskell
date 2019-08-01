module Modulo_aula36 where

data Fila t = Casa t (Fila t) | NullFila

criaFila :: Fila t
criaFila = NullFila

adicionaFila :: t -> Fila t -> Fila t
adicionaFila valor NullFila = Casa valor NullFila
adicionaFila valor (Casa x prox)  = Casa x (adicionaFila valor prox)

valorFila :: Fila  t-> t
valorFila NullFila = error "Fila Vazia"
valorFila (Casa x _) = x

retiraFila :: Fila t -> Fila t
retiraFila NullFila = error "Fila Vazia"
retiraFila (Casa _ prox) = prox

filaPraLista :: Fila t -> [t]
filaPraLista NullFila = []
filaPraLista (Casa x prox) = x:filaPraLista prox

listaPraFila :: [t] -> Fila t
listaPraFila [] = NullFila
listaPraFila (h:t) = Casa h (listaPraFila t)

