{-
07_Arboles.hs
Autor: Alberto Palacios
-}

--Importando librerias
-- import Data.List

--Definiendo un tipo de dato : Arbol
data Arbol t = Hoja | Nodo t (Arbol t) (Arbol t) deriving (Show, Eq)

--Definiendo un arbol
miArbol = Nodo 9 (Nodo 3 (Nodo 2 Hoja Hoja)(Nodo 4 Hoja Hoja)) (Nodo 7 Hoja Hoja)

--Numero de hojas en un arbol 
numHojas :: Arbol t -> Int
numHojas Hoja = 1
numHojas (Nodo v izq der) = numHojas izq + numHojas der

--Numero de nodos en un arbol
numNodos :: Arbol t -> Int
numNodos Hoja = 0
numNodos (Nodo v izq der) = 1 + numNodos izq + numNodos der