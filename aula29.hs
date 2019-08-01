-- /definir algo proximo de "classes" em haskell atraves da função data
type Nome = String
type Matricula = Int
data Pessoa = Aluno Nome Matricula | Professor Nome Matricula
    deriving(Show)

is_Professor :: Pessoa -> Bool
is_Professor (Professor _ _) = True
is_Professor _ = False

is_Aluno :: Pessoa -> Bool
is_Aluno (Aluno _ _) = True
is_Aluno _ = False

