import System.Random
jogo = 
    do
        num <- randomRIO (1::Int, 20::Int)
        escolha num

escolha num = 
    do
        putStr "Digite numero: "
        n <- getLine
        if ((read n)<num) then 
            do
                putStrLn "Mais!"
                escolha num
        else if ((read n)>num) then 
            do
                putStrLn "Menos!"
                escolha num
        else 
            putStr "Parabens!"
