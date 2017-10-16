{-|
Module      : lista
Description : Exercício 13 - Lista de Exercícios Básicos - num 12
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
 Dada a string “0123456789”, crie uma lista com os dígitos em formato Integer.


-}

import Data.Char


-- |'main' executa programa principal: irá converter uma string em lista de inteiros
main :: IO ()
main = do
  let value = "0123456789"
  print (map digitToInt value)