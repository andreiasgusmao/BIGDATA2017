{-|
Description : Exerc�cio 6 - Lista de Listas
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Crie a fun��o collatz x que retorna x/2, se x for par e (3x+1) se for �mpar.
-}

module Main where

-- | Fun��o collatz
collatz :: Integer -> Integer
collatz x
    | (x `mod` 2 == 0) = x `div` 2
    | otherwise = 3 * x + 1


-- | main: m�todo principal 
main :: IO()
main = do
  print(collatz 4)
  print(collatz 3)