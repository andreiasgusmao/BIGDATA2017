{-|
Module      : lista
Description : Exerc�cio 11 - Lista de Exerc�cios B�sicos - num 10
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Crie uma tupla em que o primeiro elemento tem metade dos anos bissextos e o segundo elemento a outra metade.
-}

module Main where

-- | lista: contendo todos os anos bissextos de 1 at� o ano de 2017
lista = [ano | ano <- [1..2017], 
    (ano `rem` 400 == 0) || ( (ano `rem` 4 == 0)
    && (ano `rem` 100 /= 0)) ]

split :: [a] -> ([a], [a])
split yearList = splitAt (((length yearList) + 1) `div` 2) yearList  

-- |'main' executa programa principal: ir� mostrar duas tuplas com os anos bissextos
main :: IO ()
main = do
       print $ split lista