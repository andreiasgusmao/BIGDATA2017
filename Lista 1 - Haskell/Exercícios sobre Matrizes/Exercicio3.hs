{-|
Description : Exerc�cio 3 - Lista de Exerc�cios sobre Matrizes
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Fa�a uma fun��o que calcule a soma da diagonal secund�ria de uma matriz.
-}


module Main where

-- | Fun��o que soma os valores da diagonal secund�ria de uma matriz.
somaDiagonalSecundaria :: [[Integer]] -> Integer
somaDiagonalSecundaria m = foldl (+) 0 [m !! x !! (length m - 1 - x) | x <- [0..(length m - 1)]]

-- | Fun��o principal
main :: IO()
main = do
  print(somaDiagonalSecundaria [[1,1,1,1],[0,1,1,1],[0,1,0,1],[1,0,0,1]])