{-
06_TDU1.hs
Autor: Alberto Palacios
-}

--Ejemplo de punto y figura
--Creando tipos de datos definidos por el usuario
--con dos datos estructurados
{-
data Figura = Rect Double Double | Cir Double
area (Rect x y) = x * y
area (Cir r) = pi * r * r

-}
data Punto = Punto Float Float deriving (Show, Eq)
data Figura = Circ Punto Float | Rect Punto Float Float deriving (Show, Eq)

area :: Figura -> Float
area (Circ (Punto x y) r) = 2 * pi * r
area (Rect (Punto x y) alt anch) = 2 * (alt + anch)

distancia :: Punto -> Punto -> Float
distancia (Punto x1 y1) (Punto x2 y2) = sqrt (dx^2 + dy^2) where dx = x1 - x2 dy = y1 - y2

--rescribir
data Fig = C Float Float Float | R Float Float Float Float deriving (Show)
{-
Ejemplo : C 2 3 4
                R 2 3 2 4
map (C 10 13) [2, 3, 4, 5]
-}

--crear funciones para circulo y rectangulo