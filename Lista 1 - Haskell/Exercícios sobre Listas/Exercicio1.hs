{-|
Description : Exercíco 1 - Lista sobre Listas
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Crie uma função divisivel20 x que retorna verdadeiro se x for divisível por todos os números de 1 a 20.
-}

module Main where

-- | Função que verifica se um número é divisível por todos os números de 1 a 20.
divisivel20 :: Integer -> String
divisivel20 x = divisivel20' x 20
  where
    divisivel20' x i
      | i == 1 = "Esse numero e divisivel por todos de 1 a 20"
      | x `mod` i == 0 = divisivel20' x (i - 1)
      | otherwise = "Esse numero nao e divisivel por todos de 1 a 20"


-- | main: método principal
main :: IO()
main = do
  print (divisivel20 20040)