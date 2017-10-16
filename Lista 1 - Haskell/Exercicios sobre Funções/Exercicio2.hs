{-|
Module      : tipoTriangulo
Description : Exercício 2 - Lista de Exercícios sobre Funções
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Determina o tipo do triângulo formado pelos três lados a, b, c.
É triangulo quanto: (A<B+C) E (b<a+c) e (c<AA+b)
É triangulo Equilátero quando: (a=b) e B=C
É triangulo Isósceles quando: (a=b) ou (a=c) ou (b=c)
É triangulo Escaleno quando (A<>B) E (B<>C) E (A<>C)
-}

module Main where

-- |'função eTriangulo: recebe três valores inteiros e retorna True se os lados foramam um triângulo, ou False caso contrário
eTriangulo :: Integer -> Integer -> Integer -> Bool
eTriangulo a b c = (a < b + c ) && (b < a + c) && (c < a + b) 

-- |'função tipoTriangulo: verifica o tipo de triângulo que forma os lados, ou, se não é um triângulo
tipoTriangulo :: Integer -> Integer -> Integer -> String
tipoTriangulo a b c 
 | (eTriangulo a b c) && ( a == b) &&  (b == c) = "É triangulo Equilátero"
 | (eTriangulo a b c) && ( a == b) ||  (a == c) || (b == c) = "É triangulo Isósceles"  
 | (eTriangulo a b c) && ( a /= b) &&  (b /= c) && (a /=c ) = "É triangulo Escaleno" 
 | otherwise = "Não é um triângulo"


-- |'main' executa programa principal
main :: IO ()
main = do
 print ( tipoTriangulo 3 4 5)