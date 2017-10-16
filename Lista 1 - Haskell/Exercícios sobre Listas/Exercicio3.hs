{-|
Description : Exercício 3 - Lista de Listas
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Crie a lista de números de Fibonacci utilizando uma função geradora.
-}

module Main where

-- | main: método principal = Cria uma lista com números de Fibonacci.
main :: IO()
main = do
  let fibonacci = 1 : 2 : prox fibonacci where prox (x : t@(y : _)) = (x + y) : prox t
  -- | Mostra somente os 20 primeiros elementos da lista
  print(take 20 fibonacci)
  
   -- | Mostra a lista toda
  --print(take 20 fibonacci)