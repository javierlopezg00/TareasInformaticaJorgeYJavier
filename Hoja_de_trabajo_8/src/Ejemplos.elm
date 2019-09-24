module Ejemplos exposing(..)
--Ejercicio 1
type ArbolG a = VacioG | NodoG a (ArbolG a) (ArbolG a)

ramafinalG x = NodoG x VacioG VacioG

ramaG x rama1 rama2 = NodoG x rama1 rama2 

--Ejercicio 2
mapArbolG f x = case x of    
     VacioG -> VacioG
     NodoG a rama1 rama2 -> NodoG (f a) (mapArbolG f rama1) (mapArbolG f rama2)


--Ejercicio 3
filterArbolG f xs = case xs of    
     VacioG -> []
     NodoG a rama1 rama2 -> 
          if f a == True  
          then a::((filterArbolG f rama1) ++ (filterArbolG f rama2))
          else   (filterArbolG f rama1) ++ (filterArbolG f rama2)


--Ejercicio 4
foldTreeG f b arbol = case arbol of    
     VacioG -> b
     NodoG a rama1 rama2 -> f a (foldTreeG f b rama1) (foldTreeG f b rama2)