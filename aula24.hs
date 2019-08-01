imc altura peso 
    |indice < 18.5 = "magro"
    |indice < 25.0 = "normal"
    |indice < 30.0 = "gordin"
    |otherwise = "baleia"
    where indice = peso/altura ^ 2
