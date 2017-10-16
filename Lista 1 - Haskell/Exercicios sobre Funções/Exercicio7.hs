{-|
Description : Exercíco 7 - Lista de Funções
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
 Faça uma função que calcule o coeficiente binomial de (m,n).
-}

module Main where

-- | Função que calcula o fatorial de um número n.
fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial 1 = 1
fatorial n = fatorial' n 1
  where
    fatorial' 1 r = r
    fatorial' n r = fatorial' (n - 1) (n * r)

-- | Função que calcula o coeficiente binomial de (m, n).
coeficienteBinomial :: Integer -> Integer -> Integer
coeficienteBinomial m n = (fatorial m) `quot` (fatorial n * fatorial (m - n))


-- | ´main: método principal
main :: IO()
main = do
  print (coeficienteBinomial 12 2)
  
