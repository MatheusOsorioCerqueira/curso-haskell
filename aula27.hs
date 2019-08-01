import Data.Array

-- /função para criar um array (1,2)
get_array = array (1,2) [(1,'A'),(2,'B')]

get_value vetor casa = vetor ! casa

array_2D = array ((1,1),(2,2)) [((1,1),'A'),((1,2),'B'),((2,1),'C'),((2,2),'A')]

-- /tamanho do vetor
tamanho n = bounds n
