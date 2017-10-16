{-|
Description : Exercício 6 - Lista de Listas
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Crie a função collatz x que retorna x/2, se x for par e (3x+1) se for ímpar.
-}

module Main where

-- | Função collatz
collatz :: Integer -> Integer
collatz x
    | (x `mod` 2 == 0) = x `div` 2
    | otherwise = 3 * x + 1


-- | main: método principal 
main :: IO()
main = do
  print(collatz 4)
  print(collatz 3)