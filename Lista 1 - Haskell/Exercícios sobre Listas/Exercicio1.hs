{-|
Description : Exerc�co 1 - Lista sobre Listas
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Crie uma fun��o divisivel20 x que retorna verdadeiro se x for divis�vel por todos os n�meros de 1 a 20.
-}

module Main where

-- | Fun��o que verifica se um n�mero � divis�vel por todos os n�meros de 1 a 20.
divisivel20 :: Integer -> String
divisivel20 x = divisivel20' x 20
  where
    divisivel20' x i
      | i == 1 = "Esse numero e divisivel por todos de 1 a 20"
      | x `mod` i == 0 = divisivel20' x (i - 1)
      | otherwise = "Esse numero nao e divisivel por todos de 1 a 20"


-- | main: m�todo principal
main :: IO()
main = do
  print (divisivel20 20040)