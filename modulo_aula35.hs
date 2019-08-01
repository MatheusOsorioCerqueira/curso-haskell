module Modulo_aula35 where

fatorial :: Int -> Int
fatorial 1 = 1
fatorial n = n*(fatorial (n-1))

potencia :: Double -> Int -> Double
potencia _ 0 = 1
potencia n x = n*(potencia n (x-1))
