{-|
Module      : div2d
Description : Exerc�cio 6 - Lista de Exerc�cios B�sicos
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Divis�o de inteiro que retorna Double
-}

module Main where

-- |'div2d': recebe um valor inteiro e retorna ele dividido po 2, convertido para Double
div2d :: Integer -> Double
div2d x = fromIntegral(x) / 2.0

-- |'main' executa programa principal
main :: IO ()
main = do
    print (div2d 2)