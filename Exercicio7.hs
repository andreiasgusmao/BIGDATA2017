{-|
Module      : metadeSenoAngulo
Description : Exerc�cio 7 - Lista de Exerc�cios B�sicos
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Retorna seno da metade de um �ngulo
-}

module Main where

-- |'metadeSenoAngulo': receba um �ngulo a e retorne uma tupla contendo o seno da metade desse �ngulo
metadeSenoAngulo :: Double -> (Double, Double)
metadeSenoAngulo a = (x1, x2)
 where
 x1 = raiz
 x2 = -raiz
 raiz = sqrt ( (1 - cos(a)) / 2 )


-- |'main' executa programa principal
main :: IO ()
main = do
    print (metadeSenoAngulo 90)