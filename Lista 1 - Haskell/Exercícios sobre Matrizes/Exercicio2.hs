{-|
Description : Exerc�cio 2 - Lista de Exerc�cios sobre Matrizes
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Fa�a uma fun��o que calcule a soma da diagonal principal de uma matriz.
-}


module Main where

-- | Fun��o que soma os valores da diagonal principal de uma matriz.
somaDiagonalPrincipal :: [[Integer]] -> Integer
somaDiagonalPrincipal m = foldl (+) 0 [m !! n !! n | n <- [0..(length m - 1)]]

-- | Fun��o principal
main :: IO()
main = do
  print(somaDiagonalPrincipal [[1,1,1,1],[0,1,1,1],[0,1,0,1],[1,0,0,1]])