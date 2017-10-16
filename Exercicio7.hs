{-|
Module      : metadeSenoAngulo
Description : Exercício 7 - Lista de Exercícios Básicos
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Retorna seno da metade de um ângulo
-}

module Main where

-- |'metadeSenoAngulo': receba um ângulo a e retorne uma tupla contendo o seno da metade desse ângulo
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