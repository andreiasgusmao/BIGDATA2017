{-|
Description : Exercíco 6 - Lista de Funções
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Faça uma função que calcule a persistência aditiva de um número.
-}

module Main where

-- | Função que soma os dígitos de um número.
somaDigitos :: Integer -> Integer
somaDigitos n = somaDigitos' n 0
  where
    somaDigitos' 0 soma = soma
    somaDigitos' n soma = somaDigitos' (n `quot` 10) (n `rem` 10 + soma)

-- | Função que calcula a persistência aditiva de um número.
persistenciaAditiva :: Integer -> Integer
persistenciaAditiva n = persistenciaAditiva' n 0
  where
    persistenciaAditiva' n total 
      | n < 10 = total
      | otherwise = persistenciaAditiva' (somaDigitos n) (total + 1)

-- | 'main' executa programa principal: cálculo da persistência aditiva
main :: IO()
main = do
  print (persistenciaAditiva 8)
  print (persistenciaAditiva 34)