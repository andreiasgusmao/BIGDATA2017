{-|
Description : Exerc�co 8 - Lista de Fun��es
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Fa�a uma fun��o que calcule o elemento (i,j) do tri�ngulo de pascal.
-}

module Main where

-- | Fun��o que calcula o fatorial de um n�mero n.
fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial 1 = 1
fatorial n = fatorial' n 1
  where
    fatorial' 1 r = r
    fatorial' n r = fatorial' (n - 1) (n * r)

-- | Fun��o que calcula o coeficiente binomial de (m, n).
coeficienteBinomial :: Integer -> Integer -> Integer
coeficienteBinomial m n = (fatorial m) `quot` (fatorial n * fatorial (m - n))

-- | c�lculo do elemento (i, j) do tri�ngulo de pascal.
trianguloPascal :: (Integer, Integer) -> Integer
trianguloPascal x = coeficienteBinomial (fst (x) - 1) (snd (x) - 1)

-- | �main: m�todo principal
main :: IO()
main = do
  print (trianguloPascal (12, 2))