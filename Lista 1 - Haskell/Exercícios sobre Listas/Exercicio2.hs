{-|
Description : Exerc�co 2 - Lista sobre Listas
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Crie uma fun��o projectEuler5 que retorna o primeiro n�mero natural que retorna True para a fun��o do exerc�cio anterior. Pense em como reduzir o custo computacional.
-}

module Main where

-- | Fun��o que verifica se um n�mero � divis�vel por todos os n�meros de 1 a 20.
divisivel20 :: Integer -> Bool
divisivel20 x = divisivel20' x 20
  where
    divisivel20' x i
      | i == 1 = True
      | x `mod` i == 0 = divisivel20' x (i - 1)
      | otherwise = False


projectEuler5 :: Integer
projectEuler5 = head [x | x <- [1..], divisivel20 x]

-- | Fun��o principal
main :: IO()
main = do
  print (projectEuler5)
