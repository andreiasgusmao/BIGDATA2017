{-|
Module      : lista
Description : Exercício 8 - Lista de Exercícios Básicos
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Lista de anos bissextos desde o ano 1 até o atual.


-}

module Main where

-- | lista: contém todos os anos bissextos de 1 até o ano de 2017
lista = [ano | ano <- [1..2017], 
    (ano `rem` 400 == 0) || ( (ano `rem` 4 == 0)
    && (ano `rem` 100 /= 0)) ]


-- |'main' executa programa principal
main :: IO ()
main = do
    print (lista)