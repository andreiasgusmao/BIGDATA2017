{-|
Module      : eTriangulo
Description : Exerc�cio 1 - Lista de Exerc�cios sobre Fun��es
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Verifica se tr�s lados a, b e c formam um tri�ngulo
� triangulo quanto: (A<B+C) E (b<a+c) e (c<AA+b)
-}

module Main where

-- |'fun��o eTriangulo: recebe tr�s valores inteiros e retorna e os lados formam ou n�o um tri�ngulo
eTriangulo :: Integer -> Integer -> Integer -> String
eTriangulo a b c 
 | (a < b + c ) && (b < a + c) && (c < a + b)  =  "� triangulo"
 | otherwise = "N�o � um tri�ngulo"


-- |'main' executa programa principal
main :: IO ()
main = do
 print ( eTriangulo 10 4 5)