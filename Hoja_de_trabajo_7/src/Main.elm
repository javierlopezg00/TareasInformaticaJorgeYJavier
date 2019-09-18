module Main exposing (..)

type Arbol = Vacio | Nodo Int Arbol Arbol

ramafinal x = Nodo x Vacio Vacio

rama x rama1 rama2 = Nodo x rama1 rama2 

masUno x = case x of
     Vacio -> Vacio
     Nodo a rama1 rama2 -> Nodo (a+1) (masUno rama1) (masUno rama2)

mapArbol f x = case x of    
     Vacio -> Vacio
     Nodo a rama1 rama2 -> Nodo (f a) (mapArbol f rama1) (mapArbol f rama2)

sum x = case x of
     Vacio -> 0
     Nodo a rama1 rama2 -> a + (sum rama1) + (sum rama2)

foldTree f x arbol = case arbol of    
     Vacio -> x
     Nodo a rama1 rama2 -> f a (foldTree f x rama1) (foldTree f x rama2) 
