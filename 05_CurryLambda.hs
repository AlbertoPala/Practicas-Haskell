{-
05_CurryLambda.hs
Funciones de orden superior
Autor: Alberto Palacios
-}

{-Funciones curryficadas "Currying"
(+) 3 4
((+) 3) 4
let agregarTres = ((+) 3)
map agregaTres [1,2,3]
map (+3) [1,2,3]
map (\x -> x + 3)
(\f x y -> f x y ) (+) 3 4
(\x -> (4 + x + 3) `div` 3) 10
(\x y -> (x * x) + (y * y)) 2 4
(\f g x y -> (x `f` x)`g`(y `f` y)) (*)(+) 2 5
(\f g x y -> (x `f` x)`g`(y `f` y)) (+)(*) 2 5
(\f g l -> [f x | x <- l , g x]) (*3) even [1..10]
map (\f -> zipWith f [1..5] [1..5]) [(+), (*), (-)]
-}