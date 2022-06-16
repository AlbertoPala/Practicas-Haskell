{-
06_TDU.HS TIPOS DEFINIDOS POR EL USUARIO
AUTOR: ALBERTO PALACIOS
-}
--SENCILLO
--ENUMERADO PUEDE O NO DERIVING -- DERIVING (SHOW) O (EQ.SHOW)

data Color = Rojo | Anaranjado | Amarillo | Azul | Verde | Blanco | Negro

color_RGB Rojo = (255,0,0)
color_RGB Anaranjado = (255,128,0)
color_RGB Amarillo = (255,255,0)
color_RGB Azul = (0,0,255)
color_RGB Verde = (0,255,0)
color_RGB Blanco = (255,255,255)
color_RGB Negro = (0,0,0)

data Cliente = Cliente Int String [String] deriving (Show)

idCliente :: Cliente -> Int
idCliente (Cliente id _ _) = id

nomCliente :: Cliente -> String
nomCliente (Cliente _ nombre _) = nombre

dirCliente :: Cliente -> [String]
dirCliente (Cliente _ _ direccion) = direccion

clienteUno = Cliente 123 "lala" ["123 rev","ciudad industrial"]

--ejemplo frutas

data Fruta = Mango | Naranja deriving (Show)

cualFruta :: String -> Fruta
cualFruta f = case f of
                                   "mango" -> Mango
                                   "naranja" -> Naranja
                                   "melon" -> Mango

--tipos de datos definidos por el usuario

data Alumno = Dato String [Int] deriving (Show)
hugo = Dato "Hugo" [70,80,75,90]
paco = Dato "Francisco" [100,95,90,92]

--ejemplo persona

data Persona = Persona String String Int Float String String deriving (Show)
primerNom :: Persona -> String
primerNom (Persona primerNom _ _ _ _ _) = primerNom

apellido :: Persona -> String
apellido (Persona _ apellido _ _ _ _) = apellido

edad :: Persona -> Int
edad (Persona _ _ edad _ _ _) = edad

altura :: Persona -> Float
altura (Persona _ _ _ altura _ _) = altura

numCel :: Persona -> String
numCel (Persona _ _ _ _ numCel _) = numCel

fav :: Persona -> String
fav (Persona _ _ _ _ _ fav) = fav

--ejemplo: let hugo = Persona "hugo" "jobs" 30 195.00 "87000000" "los ricos tambien lloran"

--fav (hugo)
--reescribir Persona
data OtraPer = OtraPer {nom:: String,
                                         ap :: String,
                                         ed :: Int,
                                         alt :: Float,
                                         cel :: String,
                                         gusto :: String} deriving (Show)

--Ejemplo :t cel

-- Ejemplo autos
data Autom = Autom String String deriving (Show)
--data Autom = {marca :: String, modelo :: String} deriving (Show)
--Auto {marca = "Tesla", modelo = "S"}

--Ejemplo
data Dia = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado | Domingo deriving (Eq, Ord, Show, Read, Bounded, Enum)

{-
Lunes
show lunes
read "lunes" :: dia
lunes == sabado
jueves == viernes
sabado > viernes
lunes `compare` sabado
minBound :: Dia
maxBound :: Dia
succ lunes
pred lunes
-}