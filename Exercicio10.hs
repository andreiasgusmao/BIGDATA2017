{-|
Module      : lista
Description : Exerc�cio 10 - Lista de Exerc�cios B�sicos
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
 Encontre os 10 �ltimos anos bissextos 
-}

module Main where

-- | lista: cont�m todos os anos bissextos de 1 at� o ano de 2017
lista = [ano | ano <- [1..2017], 
    (ano `rem` 400 == 0) || ( (ano `rem` 4 == 0)
    && (ano `rem` 100 /= 0)) ]


-- |'main' executa programa principal: ir� mostrar os 10 �ltimos ano bissextos
main :: IO ()
main = do
    let l = length lista - 10
    print (drop l lista)