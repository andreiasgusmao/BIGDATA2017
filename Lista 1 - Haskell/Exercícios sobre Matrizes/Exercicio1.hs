{-|
Description : Exercício 1 - Lista de Exercícios sobre Matrizes
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Faça uma função que gere uma matriz identidade de tamanho n.
-}

module Main where

-- | Função que converte um valor Bool True para 1 e False para 0.
bool2Int :: Bool -> Integer
bool2Int x
  | x == True = 1
  | otherwise = 0

-- | Função que cria uma matriz identidade de tamanho n.
matrizIdentidade :: Integer -> [[Integer]]
matrizIdentidade n = [[bool2Int(coluna == linha) | coluna <- [1..n]] | linha <- [1..n]]


-- | main: método principal 
main :: IO()
main = do
  print(matrizIdentidade 3)
 