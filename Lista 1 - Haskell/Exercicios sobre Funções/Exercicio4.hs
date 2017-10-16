{-|
Description : Exercício 4 - Lista sobre Funções
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Faça uma função que determine se um número é primo.
-}

module Main where

-- |verifica se um número é primo ou não
primo :: Int -> String
primo 1 = "Não é número primo"
primo 2 = "É número primo"
primo n 
       | (length [x | x <- [2 .. n-1], mod n x == 0]) > 0 = "Não é número primo"
       | otherwise = "É um número primo"

-- |'main' executa programa principal: irá mostrar se um número é primo ou não
main :: IO ()
main = do
  print (primo 5 )