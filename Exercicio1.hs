{-|
Module      : Exerc1
Description : Exercício 1 - Exercícios Básicos
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Executa 3 operações com menor número de parênteses
-}


module Main where

-- |'main' executa programa principal
main :: IO ()
main = do

 print (2 * 3 + 5)
 print (2 + 2*3 + 1)
 print (3 ^ 4 + 5 * 2 ^ 5 + 1)

 