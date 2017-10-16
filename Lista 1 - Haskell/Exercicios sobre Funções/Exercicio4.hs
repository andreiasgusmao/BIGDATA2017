{-|
Description : Exerc�cio 4 - Lista sobre Fun��es
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Fa�a uma fun��o que determine se um n�mero � primo.
-}

module Main where

-- |verifica se um n�mero � primo ou n�o
primo :: Int -> String
primo 1 = "N�o � n�mero primo"
primo 2 = "� n�mero primo"
primo n 
       | (length [x | x <- [2 .. n-1], mod n x == 0]) > 0 = "N�o � n�mero primo"
       | otherwise = "� um n�mero primo"

-- |'main' executa programa principal: ir� mostrar se um n�mero � primo ou n�o
main :: IO ()
main = do
  print (primo 5 )