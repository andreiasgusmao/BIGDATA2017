{-|
Module      : lista
Description : Exerc�cio 12 - Lista de Exerc�cios B�sicos - num 11
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Crie um concatenador de strings que concatena duas strings separadas por espa�o.
-}

module Main where

-- | concatenaStrings: concatena duas strings separadas por espa�o
concatenaStrings :: String -> String -> String
concatenaStrings s1 s2 =  s1 ++ " " ++ s2 


-- |'main' executa programa principal: ir� concatenar duas strings
main :: IO ()
main = do
    let string1 = "Andreia"
    let string2 = "Gusmao"
    print(concatenaStrings string1 string2)