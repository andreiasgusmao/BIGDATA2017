{-|
Description : Exerc�cio 3 - Lista sobre Fun��es
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Implemente uma fun��o que faz a multiplica��o et�ope entre dois n�meros.
-}

module Main where

-- |c�lculo da multiplica��o etiope
etiope :: Integer -> Integer -> Integer
etiope m n = etiope' m n 0
  where
    etiope' 1 n r = n + r
    etiope' m n r
      | impar m = etiope' (div m  2) (n * 2) (n + r)
      | otherwise =  etiope' (div m  2) (n*2) r


-- |'verifica se o n�mero � �mpar ou n�o
impar :: Integer -> Bool
impar x = (x `rem` 2) /= 0
 
-- |'main' executa programa principal: ir� calcular a multiplica��o et�ope
main :: IO ()
main = do
  print (etiope 14 12)