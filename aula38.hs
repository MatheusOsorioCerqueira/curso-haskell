soma = do
    putStr "n1: "
    n1 <- getLine
    putStr "n2: "
    n2 <- getLine
    putStrLn (show (read n1 + read n2))