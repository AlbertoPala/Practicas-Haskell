
  import Data.List
 
  data Arbol a = Hoja 
             | Nodo a (Arbol a) (Arbol a)
             deriving (Show, Eq)
 
--Definir un arbol de 4 niveles con sus respectivas hojas en todas las ramas.
  arbolTarea = Nodo 0 ( Nodo 1 ( Nodo 2 ( Nodo 3 Hoja Hoja ) Hoja )
               ( Nodo 4 Hoja ( Nodo 5 Hoja Hoja ) ) ) ( Nodo 6 ( Nodo 7 (Nodo 8 Hoja Hoja) (Nodo 9 Hoja Hoja) ) Hoja )

  arbolOwO = Nodo 0 (Nodo 1 (Nodo 3 Hoja Hoja)(Nodo 5 Hoja (Nodo 7 Hoja Hoja)))(Nodo 2 (Nodo 4 (Nodo 8 Hoja Hoja) Hoja)(Nodo 6 Hoja Hoja))

  arbolito = Nodo 0 (Nodo 1 (Nodo 2 (Nodo 3 Hoja Hoja)(Nodo 4 Hoja Hoja))Hoja)(Nodo 5 (Nodo 6 (Nodo 8 Hoja Hoja)Hoja)(Nodo 7 Hoja Hoja))

--Las siguientes funciones las vimos en clase:
 
  nHojas :: Arbol a -> Int
  nHojas Hoja         = 1
  nHojas (Nodo x i d) = nHojas i + nHojas d
 
 
  nNodos :: Arbol a -> Int
  nNodos Hoja         = 0
  nNodos (Nodo x i d) = 1 + nNodos i + nNodos d
 
-------Inicia la tarea
--Realizar las ejecuciones de las siguientes funciones con distintos parametros
--Tomar capturas de pantalla completa y explicar el funcionamiento de las funciones
--Además explicar las salidas
 
  profundidad :: Arbol a -> Int
  profundidad Hoja = 0
  profundidad (Nodo x i d) = 1 + max (profundidad i) (profundidad d)
 

  preorden :: Arbol a -> [a]
  preorden Hoja         = []
  preorden (Nodo x i d) = x : (preorden i ++ preorden d)
 
  postorden :: Arbol a -> [a]
  postorden Hoja         = []
  postorden (Nodo x i d) = postorden i ++ postorden d ++ [x]
 
  preordenIt :: Arbol a -> [a]
  preordenIt x = preordenItAux x []
      where preordenItAux Hoja xs         = xs
            preordenItAux (Nodo x i d) xs = 
                x : preordenItAux i (preordenItAux d xs)
 
  espejo :: Arbol a -> Arbol a
  espejo Hoja         = Hoja
  espejo (Nodo x i d) = Nodo x (espejo d) (espejo i)
 

  takeArbol :: Int -> Arbol a -> Arbol a
  takeArbol 0     _  = Hoja
  takeArbol _ Hoja   = Hoja
  takeArbol n (Nodo x i d) = 
      Nodo x (takeArbol (n-1) i) (takeArbol (n-1) d)
 

  repeatArbol :: a -> Arbol a
  repeatArbol x = Nodo x t t
                  where t = repeatArbol x
 
 
  replicateArbol :: Int -> a -> Arbol a
  replicateArbol n = takeArbol n . repeatArbol