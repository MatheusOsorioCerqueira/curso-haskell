menor n [] = n
menor n (h:t)
    |h<n = menor h t
    |otherwise = menor n t


elimina_menor _ [] = []
elimina_menor n (h:t)
    |h<n = n:elimina_menor h t
    |otherwise = h: elimina_menor n t



ordena [] = []
ordena (h:t) = menor h t : ordena (elimina_menor h t)