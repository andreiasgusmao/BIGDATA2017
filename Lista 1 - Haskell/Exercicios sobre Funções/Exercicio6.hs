{-|
Description : Exerc�co 6 - Lista de Fun��es
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Fa�a uma fun��o que calcule a persist�ncia aditiva de um n�mero.
-}

module Main where

-- | Fun��o que soma os d�gitos de um n�mero.
somaDigitos :: Integer -> Integer
somaDigitos n = somaDigitos' n 0
  where
    somaDigitos' 0 soma = soma
    somaDigitos' n soma = somaDigitos' (n `quot` 10) (n `rem` 10 + soma)

-- | Fun��o que calcula a persist�ncia aditiva de um n�mero.
persistenciaAditiva :: Integer -> Integer
persistenciaAditiva n = persistenciaAditiva' n 0
  where
    persistenciaAditiva' n total 
      | n < 10 = total
      | otherwise = persistenciaAditiva' (somaDigitos n) (total + 1)

-- | 'main' executa programa principal: c�lculo da persist�ncia aditiva
main :: IO()
main = do
  print (persistenciaAditiva 8)
  print (persistenciaAditiva 34)