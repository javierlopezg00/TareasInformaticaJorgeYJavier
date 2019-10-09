type Grupo a = ValorGr a
     | SumaGr (Grupo a) (Grupo a)
     | InversoGr (Grupo a) 


type AlgebraGr t s = AlgebraGr (t -> s) (s -> s-> s) (s -> s)

valorGr1 a = a
sumaGr1 a b = a + b
inversoGr1 a = -a    
algebraGr1 = AlgebraGr valorGr1 sumaGr1 inversoGr1


evaluarGr (AlgebraGr valorGr sumaGr inversoGr ) expresion =
      let 
           algGr = AlgebraGr valorGr sumaGr inversoGr
      in 
           case expresion of 
           ValorGr a -> valorGr a 
           SumaGr a b -> sumaGr (evaluarGr algGr a) (evaluarGr algGr b)
           InversoGr a -> inversoGr (evaluarGr algGr a)

zAlgebra x = 
      let 
          valorGr s = s  
          sumaGr a b = modBy x (a + b )
          inversoGr y = -x
      in  
          AlgebraGr valorGr sumaGr inversoGr 
