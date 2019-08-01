inverter :: [t] -> [t]
inverter [] = []
inverter (h:t) = inverter t ++ [h] 
