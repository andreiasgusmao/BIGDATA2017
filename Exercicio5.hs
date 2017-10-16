{-|
Module      : Exerc5
Description : Exercício 5 - Exercícios Básicos
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Retorna True caso a entrada seja menor que -1 ou (maior que 1 E múltiplo de 2), e False caso contrário.

-}


module Main where

-- |'função exerc5: Retorna True caso a entrada seja menor que -1 ou (maior que 1 E múltiplo de 2), e False caso contrário.
exerc5::Integer->Bool
exerc5 n = (n < -1) || (n > 1 && (n `rem` 2) == 0) 

-- |'main' executa programa principal
main :: IO ()
main = do
 print ( exerc5 (-2))