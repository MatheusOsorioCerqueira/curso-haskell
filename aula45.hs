import System.IO 

type Arquivo = String

ler_arquivo :: String -> IO()
ler_arquivo arq = do
    f <- openFile arq ReadMode
    conteudo <- hGetContents f 
    putStrLn conteudo 
    hClose f