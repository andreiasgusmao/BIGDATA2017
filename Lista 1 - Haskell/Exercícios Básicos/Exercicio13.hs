{-|
Module      : lista
Description : Exerc�cio 13 - Lista de Exerc�cios B�sicos - num 12
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
 Dada a string �0123456789�, crie uma lista com os d�gitos em formato Integer.


-}

import Data.Char


-- |'main' executa programa principal: ir� converter uma string em lista de inteiros
main :: IO ()
main = do
  let value = "0123456789"
  print (map digitToInt value)