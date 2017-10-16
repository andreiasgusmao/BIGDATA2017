{-|
Description : Exerc�cio 5 - Lista sobre Fun��es
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Fa�a uma fun��o que calcule a soma dos d�gitos de um n�mero.
-}

module Main where

-- |soma os d�gitos do n�mero digitado
somaDigitos :: Integer -> Integer
somaDigitos x = foldl (+) 0 (digitos' x)
    where
      digitos' n
        | n < 10 = [n]
        | otherwise = digitos' (div n 10) ++ [mod n 10]

-- |'main' executa programa principal: ir� mostrar se um n�mero � primo ou n�o
main :: IO ()
main = do
  print (somaDigitos 14 )