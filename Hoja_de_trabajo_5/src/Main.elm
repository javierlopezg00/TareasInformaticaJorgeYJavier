module Main exposing (..)

--Ejercicio 2

verificar : Int -> Int -> Bool
verificar x n =
     if x <= 1 then False 
     else if x == 2 then True
     else if x == n then True
     else if modBy n x == 0 then False else verificar x (n+1)

esPrimo : Int -> Bool
esPrimo x = verificar x 2
--Ejercicio 3

fibonacci n = 
    if n == 1 then
    1
    else if n == 0 then
    0
    else 
    (n-1) + (n-2)

--Ejercicio 4
range : Int -> List Int
range x = case x of
      0 -> []
      a -> a :: range (a-1)

esPar num = case num of
      0 -> True
      1 -> False 
      q -> esPar (q-2)
count : List Int -> Int 
count xs = case xs of
     [] -> 0
     b::bs -> if b == 0 then count bs else 1 + count bs 

existe x xs = case xs of
     [] -> False
     b::bs -> if b == x then True else existe x bs
sumatoria xs = case xs of
     [] -> 0
     b::bs -> b + sumatoria bs 

multiplicar xs = case xs of
     [] -> 1
     b::bs -> b * multiplicar bs 

operar f inicial xs = case xs of
     [] -> inicial
     b::bs -> f b (operar f inicial bs) 
ifilter f xs = case xs of
     [] -> []
     b::bs -> if f b == True then b::ifilter f bs else ifilter f bs 

primos : Int -> List Int
primos x = ifilter (esPrimo) (range x)
--Ejercicio 5

