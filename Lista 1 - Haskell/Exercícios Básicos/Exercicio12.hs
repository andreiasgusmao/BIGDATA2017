{-|
Module      : lista
Description : Exercício 12 - Lista de Exercícios Básicos - num 11
Copyright   : (c) Andreia Gusmão, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Crie um concatenador de strings que concatena duas strings separadas por espaço.
-}

module Main where

-- | concatenaStrings: concatena duas strings separadas por espaço
concatenaStrings :: String -> String -> String
concatenaStrings s1 s2 =  s1 ++ " " ++ s2 


-- |'main' executa programa principal: irá concatenar duas strings
main :: IO ()
main = do
    let string1 = "Andreia"
    let string2 = "Gusmao"
    print(concatenaStrings string1 string2)