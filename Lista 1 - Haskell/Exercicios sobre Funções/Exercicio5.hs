{-|
Description : Exercício 5 - Lista sobre Funções
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Faça uma função que calcule a soma dos dígitos de um número.
-}

module Main where

-- |soma os dígitos do número digitado
somaDigitos :: Integer -> Integer
somaDigitos x = foldl (+) 0 (digitos' x)
    where
      digitos' n
        | n < 10 = [n]
        | otherwise = digitos' (div n 10) ++ [mod n 10]

-- |'main' executa programa principal: irá mostrar se um número é primo ou não
main :: IO ()
main = do
  print (somaDigitos 14 )