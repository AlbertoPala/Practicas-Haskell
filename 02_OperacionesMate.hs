{-
02_OperacionesMate.hs
Operaciones Matematicas
Autor: Alberto Palacios
-}

--Funciones sencillas con definicion de tipos de datos
medida :: Integer
medida = 110 + 5

cuadrado :: Integer -> Integer
cuadrado num = num * num

doble :: Integer -> Integer
doble x = 2*x

ejemplo :: Integer
ejemplo = doble(medida - cuadrado(2 + 2))

--Funciones sencillas sin definicion de tipos de datos
--Media aritmetica de tres numeros
mediaTres x y z = max x (max y z)

--Maximo y minimo de tres numeros
maxTres x y z = max x (max y z)
minTres x y z = min x (min y z)

--Verifica si tres numeros son iguales
igualTres x y z = x == y && y == z
difTres x y z = x /= y && y/= z

-----------------------------------------

cuadruple x = doble (doble x)
suma :: (Int, Int) -> Int
suma (x,y) = x + y

--Funciones con multiples valores
mas :: Int -> Int -> Int
mas x y = x + y

--Funcion factorial
factorial :: Integer -> Integer
factorial n = product [1..n]

--Funcion circunferencial
circunferenciaF :: Float -> Float
circunferenciaF r = 2 * pi * r

--Funcion circunferencialD
circunferenciaD :: Double -> Double
circunferenciaD r = 2 * pi * r