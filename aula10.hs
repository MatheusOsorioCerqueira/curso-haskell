-- |listas
add_lista::t->[t]->[t]
add_lista x y = x:y

somar::[Double]->Double
somar [] = 0
somar (h:t) = h + somar t

merge::[t]->[t]->[t]
merge [] x = x
merge (h:t) x = h: merge t x