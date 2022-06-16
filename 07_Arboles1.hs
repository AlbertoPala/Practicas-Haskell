{-
07_Arboles1.hs Arboles
Arboles
Autor: Alberto Palacios
-}

module Main where

data Tree a = Vacio
                       | Nodo a (Tree a) (Tree a)
                         deriving (Eq, Ord, Show, Read)

main :: IO()

main = do 
         
        putStrLn "Iniciando..."
-- let arbol = Nodo 5 (Nodo 3 Vacio Vacio) (Nodo 2 Vacio Vacio)
        let arbol = Nodo 11 (Nodo 12 Vacio Vacio) (Nodo 13 (Nodo 14 Vacio Vacio)Vacio)
        print arbol
        print (suma_arbol arbol)

        let arbolito = Nodo "r" (Nodo "s" Vacio Vacio) (Nodo "a" Vacio Vacio)
        print arbolito

        putStrLn "Finalizando..."

suma_arbol :: Num a => Tree a -> a
suma_arbol Vacio = 0
suma_arbol (Nodo n i d) = n + suma_arbol i + suma_arbol d