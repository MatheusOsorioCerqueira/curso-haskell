-- |variavel anonima
potencia _ 0 = 1
potencia n p = n*(potencia n (p-1))