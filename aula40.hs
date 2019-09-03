quickSort [] = []
quickSort (h:t) = quickSort esq_x ++ [h] ++ quickSort dir_x
    where
        esq_x = [y | y <- t, y <= h]
        dir_x = [y | y <- t, y > h]