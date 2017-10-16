{-|
Description : Exercício 3 - Lista de Exercícios sobre Matrizes
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Faça uma função que calcule a soma da diagonal secundária de uma matriz.
-}


module Main where

-- | Função que soma os valores da diagonal secundária de uma matriz.
somaDiagonalSecundaria :: [[Integer]] -> Integer
somaDiagonalSecundaria m = foldl (+) 0 [m !! x !! (length m - 1 - x) | x <- [0..(length m - 1)]]

-- | Função principal
main :: IO()
main = do
  print(somaDiagonalSecundaria [[1,1,1,1],[0,1,1,1],[0,1,0,1],[1,0,0,1]])