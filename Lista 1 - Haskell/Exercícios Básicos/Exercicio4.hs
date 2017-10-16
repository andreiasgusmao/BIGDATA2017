{-|
Module      : Mult35
Description : Exercício 4 - LIsta de Exercícios Básicos
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Verifica se um número inteiro é múltiplo de 3 e 5.
-}

module Main where

-- |'função mult35: recebe um inteiro e retorna True se a entrada por múltiplo de 3 e 5 e False, caso contrário
mult35::Integer->Bool
mult35 n = (n `rem` 3) == 0 && (n `rem` 5) == 0

-- |'main' executa programa principal
main :: IO ()
main = do
 print ( mult35 15)