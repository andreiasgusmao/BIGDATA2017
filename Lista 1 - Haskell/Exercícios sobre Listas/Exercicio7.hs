{-|
Description : Exercício 7 - Lista de Listas
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Implemente uma função collatzLen x que retorna o tamanho da lista formada pela aplicação repetida de collatz sobre o valor x até que essa chegue no número 1.
-}

module Main where

-- | Função collatz
collatz :: Integer -> Integer
collatz x
    | (x `mod` 2 == 0) = x `div` 2
    | otherwise = 3 * x + 1

-- | Função que retorna o tamanho da lista da aplicação repetida de collatz sobre o valor x até que chegue em 1.
collatzLen :: Integer -> Integer
collatzLen x = collatzLen' (collatz x) 1
  where
    collatzLen' 1 length = length
    collatzLen' x length = collatzLen' (collatz x) (length+1)


-- | main: método principal 
main :: IO()
main = do
  print( collatzLen 6)