{-|
Description : Exercício 4 - Lista de Listas
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Utilizando a lista anterior, calcule a soma dos números de Fibonacci pares dos valores que não excedem 4.000.000. (Project Euler 2)
-}

module Main where

-- | main: método principal 
main :: IO()
main = do
  -- | = Cria uma lista com números de Fibonacci
  let fibonacci = 1 : 2 : prox fibonacci where prox (x : t@(y : _)) = (x + y) : prox t
  
  -- | Lista com números de Fibonacci menor que 4.000.000
  let menores = takeWhile (\x -> (x < 4000000)) fibonacci
  
  -- | Lista dos números pares menores que 4.000.000
  let pares = [x | x <- menores, x `rem` 2 == 0]
  
  -- | soma será calculada e apresentada
  print(foldl (+) 0 pares)
 