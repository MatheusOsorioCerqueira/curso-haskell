-- | tuplas
idade :: (Int,Int,Int) -> (Int, Int, Int) -> Int
idade (dia,mes,ano) (dia2,mes2,ano2) = ano - ano2 - (dia_mes (dia,mes) (dia2,mes2))

dia_mes :: (Int,Int) -> (Int,Int) -> Int 
dia_mes (dia,mes) (dia2,mes2)
    |mes2<mes = 0
    |mes<mes2 = 1
    |dia2<dia = 0
    |otherwise = 1