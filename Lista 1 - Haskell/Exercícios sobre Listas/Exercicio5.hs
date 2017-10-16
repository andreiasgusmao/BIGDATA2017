{-|
Description : Exercício 5 - Lista de Listas
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Faça uma função para calcular o produto escalar entre dois vetores.
-}

module Main where


-- |Função que calcula o produto escalar entre dois vetores
prodEscalar :: [Integer] -> [Integer] -> Integer
prodEscalar x y = foldl (+) 0 (zipWith (*) x y)


-- | main: método principal 
main :: IO()
main = do
  print(prodEscalar [8,1,3] [2,5,1])