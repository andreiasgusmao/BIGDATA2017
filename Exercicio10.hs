{-|
Module      : lista
Description : Exercício 10 - Lista de Exercícios Básicos
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
 Encontre os 10 últimos anos bissextos 
-}

module Main where

-- | lista: contém todos os anos bissextos de 1 até o ano de 2017
lista = [ano | ano <- [1..2017], 
    (ano `rem` 400 == 0) || ( (ano `rem` 4 == 0)
    && (ano `rem` 100 /= 0)) ]


-- |'main' executa programa principal: irá mostrar os 10 últimos ano bissextos
main :: IO ()
main = do
    let l = length lista - 10
    print (drop l lista)