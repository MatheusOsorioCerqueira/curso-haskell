-- grafos

type Vertice = Int
type Custo = Int
type Aresta = (Vertice, Custo)
data Grafos = Grafo Int [[Aresta]]


matrizVazia 0 = [[]]
matrizVazia x = [[]] ++ matrizVazia (x-1)  

iniciaGrafo :: Int -> Grafos
iniciaGrafo x 
    |x>0 = Grafo x (matrizVazia x)
    |otherwise = error "Somente números positivos"

adicionaGrafo :: Int -> Aresta -> Grafos -> Grafos
adicionaGrafo casa aresta (Grafo x y) = Grafo x (adicionaMatriz casa aresta y)

adicionaMatriz :: Int -> t -> [[t]] -> [[t]]
adicionaMatriz _ _ [] = [[]]
adicionaMatriz 0 valor (h:t) = [h ++ [valor]] ++ adicionaMatriz (-1) valor t
adicionaMatriz n valor (h:t) = [h] ++ adicionaMatriz (n-1) valor t

verGrafo (Grafo _ y) = y



