-- | comando ++
inverter_lista :: [t]->[t]
inverter_lista [] = []
inverter_lista (h:t) = inverter_lista t ++ [h]