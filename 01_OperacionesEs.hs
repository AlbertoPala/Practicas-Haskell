{-
01_OperacionesES.hs
Operaciones E/S
Autor: Alberto Palacios
-}

--Recibe un caracter y lo imprime en pantallla

main :: IO()
main = do
             car <- getChar
             putChar car

--Lee un caracter y devuelve un True si fue "y"
otro :: IO Bool
otro = do
           c <- getChar
           return (c == 'y')

--Lee una cadena

cadena = do
                putStrLn "Escribe algo"
                cad <- getLine
                putStrLn("Escribiste: " ++ cad)

-- Jugando con I0() y concatenación de cadena
nombre = do
          putStrLn "Hola, tu nombre es: "
          nom <- getLine
          putStrLn("Hola,  " ++ nom ++ "!")

otravez = do
        cag <- putStrLn "Hola, tu nombre es: "
        nom <- getLine
        putStrLn("Hola "++ nom ++ "!")