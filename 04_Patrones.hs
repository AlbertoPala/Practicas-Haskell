--funciones de orden superior

--Funciones como parametros y devuelve funciones
--f_mas :: Int -> Int -> Int
  f_mas x y = x + y

-- f_mcurry :: Int -> Int -> Int
-- f_mcurry x y = x + y

  f_curry = \x -> \y -> x + y
  f_mcurry = \x y -> x +y