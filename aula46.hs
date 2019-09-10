import System.IO 

type Arq = String
type Texto = String

escrever :: Arq -> Texto -> IO()
escrever arq txt = writeFile arq txt

ler:: Arq -> IO()
ler arq = do
    conteudo <- readFile arq
    putStrLn conteudo

anexar :: Arq -> Texto -> IO()
anexar arq txt = appendFile arq txt