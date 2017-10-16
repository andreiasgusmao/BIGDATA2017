{-|
Description : Exercício 2 - Lista de Exercícios sobre Matrizes
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Faça uma função que calcule a soma da diagonal principal de uma matriz.
-}


module Main where

-- | Função que soma os valores da diagonal principal de uma matriz.
somaDiagonalPrincipal :: [[Integer]] -> Integer
somaDiagonalPrincipal m = foldl (+) 0 [m !! n !! n | n <- [0..(length m - 1)]]

-- | Função principal
main :: IO()
main = do
  print(somaDiagonalPrincipal [[1,1,1,1],[0,1,1,1],[0,1,0,1],[1,0,0,1]])