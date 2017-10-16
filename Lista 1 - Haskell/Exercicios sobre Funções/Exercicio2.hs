{-|
Module      : tipoTriangulo
Description : Exerc�cio 2 - Lista de Exerc�cios sobre Fun��es
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Determina o tipo do tri�ngulo formado pelos tr�s lados a, b, c.
� triangulo quanto: (A<B+C) E (b<a+c) e (c<AA+b)
� triangulo Equil�tero quando: (a=b) e B=C
� triangulo Is�sceles quando: (a=b) ou (a=c) ou (b=c)
� triangulo Escaleno quando (A<>B) E (B<>C) E (A<>C)
-}

module Main where

-- |'fun��o eTriangulo: recebe tr�s valores inteiros e retorna True se os lados foramam um tri�ngulo, ou False caso contr�rio
eTriangulo :: Integer -> Integer -> Integer -> Bool
eTriangulo a b c = (a < b + c ) && (b < a + c) && (c < a + b) 

-- |'fun��o tipoTriangulo: verifica o tipo de tri�ngulo que forma os lados, ou, se n�o � um tri�ngulo
tipoTriangulo :: Integer -> Integer -> Integer -> String
tipoTriangulo a b c 
 | (eTriangulo a b c) && ( a == b) &&  (b == c) = "� triangulo Equil�tero"
 | (eTriangulo a b c) && ( a == b) ||  (a == c) || (b == c) = "� triangulo Is�sceles"  
 | (eTriangulo a b c) && ( a /= b) &&  (b /= c) && (a /=c ) = "� triangulo Escaleno" 
 | otherwise = "N�o � um tri�ngulo"


-- |'main' executa programa principal
main :: IO ()
main = do
 print ( tipoTriangulo 3 4 5)