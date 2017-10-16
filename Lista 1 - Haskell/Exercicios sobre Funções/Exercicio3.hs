{-|
Description : Exercício 3 - Lista sobre Funções
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Implemente uma função que faz a multiplicação etíope entre dois números.
-}

module Main where

-- |cálculo da multiplicação etiope
etiope :: Integer -> Integer -> Integer
etiope m n = etiope' m n 0
  where
    etiope' 1 n r = n + r
    etiope' m n r
      | impar m = etiope' (div m  2) (n * 2) (n + r)
      | otherwise =  etiope' (div m  2) (n*2) r


-- |'verifica se o número é ímpar ou não
impar :: Integer -> Bool
impar x = (x `rem` 2) /= 0
 
-- |'main' executa programa principal: irá calcular a multiplicação etíope
main :: IO ()
main = do
  print (etiope 14 12)