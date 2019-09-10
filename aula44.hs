import System.IO
type Nome_arq = String
type Texto = String


escrever_novo :: Nome_arq -> Texto -> IO()
escrever_novo arq texto = do
    f <- openFile arq WriteMode
    hPutStr f texto
    hFlush f 
    hClose f 