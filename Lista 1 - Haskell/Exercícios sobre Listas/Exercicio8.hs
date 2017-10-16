{-|
Description : Exercício 8 - Lista de Listas
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Encontre o número x entre 1 e 1.000.000 que tem a maior sequência de Collatz. (Project Euler 14)
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
  let listaCollatz = [(collatzLen x, x) | x <- [1 .. 1000000]]
  print(maximum listaCollatz)