module Main exposing (..)

type AlgebraGr t s = AlgebraGr (t -> s) (s -> s-> s) (s -> s)

valorGr a = a
sumaGr a b = a + b
inversoGr a = -a    
algebraGr = AlgebraGr valorGr sumaGr InversoGr


evaluarGr = (AlgebraGr valorGr sumaGr inversoGr ) expresion =
 let 
    algGr = Algebra valorGr sumaGr inversoGr
 in 
    case expresion of 
    ValorGr a -> valorGr a 
    SumaGr a b -> sumaGr (evaluarGr algGr a) (evaluar algGr b )
    InversoGr a -> inversoGr (evaluar algGr a)

zAlgebra x = 
   let 
      valorGr s = s  
      sumaGr a b = modBy x (a + b )
      inversoGr y = -x
   in  
      AlgebraGr valorGr sumaGr inversoGr 
