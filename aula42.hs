elimina_sequencia :: String -> Char -> String
elimina_sequencia [] _ = []
elimina_sequencia (h:t) n
    |h == n = elimina_sequencia t n
    |otherwise = h: elimina_sequencia t n



testa_sequencia seq = testa_seqAUX seq "ACGT"

testa_seqAUX [] [] = True
testa_seqAUX _ [] = False
testa_seqAUX seq (h:t) = testa_seqAUX (elimina_sequencia seq h) t

conta_nucleotideo seq = conta_aux seq (0,0,0,0)

conta_aux [] n = n
conta_aux (h:t) (a,b,c,d) = 
    do
        if(h == 'A') then conta_aux t (a+1,b,c,d)
        else if (h == 'C') then conta_aux t (a,b+1,c,d)
        else if (h == 'G') then conta_aux t (a,b,c+1,d)
        else conta_aux t (a,b,c,d+1)
    
