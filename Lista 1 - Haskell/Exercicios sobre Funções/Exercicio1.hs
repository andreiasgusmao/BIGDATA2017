{-|
Module      : eTriangulo
Description : Exercício 1 - Lista de Exercícios sobre Funções
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Verifica se três lados a, b e c formam um triângulo
É triangulo quanto: (A<B+C) E (b<a+c) e (c<AA+b)
-}

module Main where

-- |'função eTriangulo: recebe três valores inteiros e retorna e os lados formam ou não um triângulo
eTriangulo :: Integer -> Integer -> Integer -> String
eTriangulo a b c 
 | (a < b + c ) && (b < a + c) && (c < a + b)  =  "É triangulo"
 | otherwise = "Não é um triângulo"


-- |'main' executa programa principal
main :: IO ()
main = do
 print ( eTriangulo 10 4 5)