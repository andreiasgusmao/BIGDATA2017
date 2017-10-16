{-|
Module      : Mult3
Description : Exercício 2 - Lista de Exercicios Básicos
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Verifica se um número inteiro é múltiplo de 3.
-}

module Main where

-- |'função mult3: recebe um inteiro e retorna True se a entrada por múltiplo de 3 e False, caso contrário
mult3::Integer->Bool
mult3 n = (n `rem` 3) == 0

-- |'main' executa programa principal
main :: IO ()
main = do
 print ( mult3 6)