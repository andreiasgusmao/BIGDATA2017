{-|
Module      : Mult5
Description : Exercício 3 - Lista de Exercícios Básicos
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Verifica se um número inteiro é múltiplo de 5.
-}

module Main where

-- |'função mult5: recebe um inteiro e retorna True se a entrada por múltiplo de 5 e False, caso contrário
mult5::Integer->Bool
mult5 n = (n `rem` 5) == 0

-- |'main' executa programa principal
main :: IO ()
main = do
 print ( mult5 5)