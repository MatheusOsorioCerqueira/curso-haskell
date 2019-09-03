main = 
    do
        putChar 'a' --escreve um caracter na tela
        putStr " Olá" --escreve uma string na tela sem pular linha
        putStrLn " testando" --escreve uma string COM quebra de linha
        print "aspas" --possui quebra de linha e mantem as aspas


main_read =
    do 
        str <- getChar
        putStrLn ""
        putChar str
        str <- getLine
        putStrLn str


main_conta =
    do
        putStr "n1: "
        n1 <- getLine
        putStr "n2: "
        n2 <- getLine
        return (( read n1 :: Int ) + (read n2 :: Int))
        


