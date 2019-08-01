push :: [t] -> t -> [t]
push vetor valor = valor:vetor

pop :: [t] -> [t]
pop [] = error "Pilha vazia"
pop (h:t) = t

top :: [t] -> t
top [] = error "Lista Vazia"
top (h:t) = h

is_empty :: [t] -> Bool
is_empty [] = True
is_empty _ = False

