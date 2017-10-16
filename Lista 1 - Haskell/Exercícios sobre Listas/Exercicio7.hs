{-|
Description : Exerc�cio 7 - Lista de Listas
Copyright   : (c) Andreia Gusm�o, 2017
License     : GPL-3
Maintainer  : andreia.gusmao@ufabc.edu.br
Implemente uma fun��o collatzLen x que retorna o tamanho da lista formada pela aplica��o repetida de collatz sobre o valor x at� que essa chegue no n�mero 1.
-}

module Main where

-- | Fun��o collatz
collatz :: Integer -> Integer
collatz x
    | (x `mod` 2 == 0) = x `div` 2
    | otherwise = 3 * x + 1

-- | Fun��o que retorna o tamanho da lista da aplica��o repetida de collatz sobre o valor x at� que chegue em 1.
collatzLen :: Integer -> Integer
collatzLen x = collatzLen' (collatz x) 1
  where
    collatzLen' 1 length = length
    collatzLen' x length = collatzLen' (collatz x) (length+1)


-- | main: m�todo principal 
main :: IO()
main = do
  print( collatzLen 6)