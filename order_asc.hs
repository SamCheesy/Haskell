{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use camelCase" #-}
{-# HLINT ignore "Redundant bracket" #-}

-- obtener un elemento en n posicion
getElementAt :: [Int] -> Int -> Int
getElementAt [] _ = 0
getElementAt (x:xs) n = firstElement (listTraveler (x:xs) n)

--Obtener una lista de los valores entre los intervalos n c de otra lista dada. n es el intervalo inicial y c el final.
elementsInRange :: [Int] -> Int -> Int -> [Int]
elementsInRange [] _ _ = []
elementsInRange (x:xs) n c 
    | c - n >= 0 = getElementAt (x:xs) n : elementsInRange (x:xs) (n+1) c
    | otherwise = []

-- Quita el elemento en la posición c (no por valor).
-- n es el índice actual (inícialo en 0).
removeElementAt :: [Int] -> Int -> Int -> [Int]
removeElementAt [] _ _ = []
removeElementAt (x:xs) c n
    | c == n = xs
    | otherwise = x : removeElementAt xs c (n+1)
    
--Eliminar de una lista los valores tanto c como n.
removeElements2 :: [Int] -> Int -> Int -> [Int]
removeElements2 [] _ _ = []
removeElements2 (x:xs) c n
    | x == c = removeElements2 xs c n
    | x == n = removeElements2 xs c n
    | otherwise = x : removeElements2 xs c n

--Eliminar de una lista los valores tanto c como n como m.
removeElements3 :: [Int] -> Int -> Int -> Int -> [Int]
removeElements3 [] _ _ _= []
removeElements3 (x:xs) c n m
    | x == c = removeElements3 xs c n m
    | x == n = removeElements3 xs c n m
    | x == m = removeElements3 xs c n m
    | otherwise = x : removeElements3 xs c n m



--añadir un numero n en la posicion c. 
--Siempre inicializar m en 0 para su correcto funcionamiento.
addElementAt :: [Int] -> Int -> Int -> Int -> [Int]
addElementAt [] n c m
    | c == m    = [n]     
    | otherwise = []      
addElementAt (x:xs) n c m
    | (getPositionOf (x:xs) (firstElement (x:xs)) m) == c = n:x:xs
    | otherwise = x : addElementAt xs n c (m+1)

--Obtener el tamaño de una lista. Siempre inicializar n en 0 para su correcto funcionamiento.
listSize :: [Int] -> Int -> Int
listSize []  _ = 0
listSize (x:xs) n
    | listTraveler (x:xs) 1 == [] = n+1
    | otherwise = listSize xs (n+1)

--obtener la lista de valores empezando en la posicion n hasta el valor final de una lista. Ejemplo:
-- listTraveler [0,1,2,3,4] 3 = [3,4] obtiene la lista de valores empezando en la posicion 3 de la lista [0,1,2,3,4]
listTraveler :: [Int] -> Int -> [Int]
listTraveler [] _ = []
listTraveler (x:xs) n
    | n > 0 = listTraveler xs (n-1)
    | otherwise = x:xs

--Obtiene el primer elemento de una lista.
firstElement :: [Int] -> Int
firstElement [] = 0
firstElement (x:_) = x

--Obtiene el último elemento de una lista.
lastElement :: [Int] -> Int
lastElement [] = 0
lastElement (x:xs)
    | (listTraveler (x:xs) 1) == [] = 0
    | otherwise = getElementAt (x:xs) ((listSize (x:xs) 0)-1)

--Obtiene la posicion de un valor n en una lista. Siempre inicializar c en 0 para su correcto funcionamiento.
getPositionOf :: [Int] -> Int -> Int -> Int
getPositionOf [] _ _ = 0
getPositionOf (x:xs) n c
    | x == n = c
    |otherwise = getPositionOf xs n (c+1)

getPositionOf2 :: [Int] -> Int -> Int -> [Int]
getPositionOf2 [] _ _ = []
getPositionOf2 (x:xs) n c
    | x == n = c:getPositionOf2 xs n (c+1)
    |otherwise = getPositionOf2 xs n (c+1)


order_asc :: [Int] -> [Int]
order_asc [] = []
order_asc (x:xs) = greaterCheckerInt (x:xs) 0 1

positionIndexer :: [Int] -> Int -> Int
positionIndexer [] _ = 0
positionIndexer (x:xs) n = firstElement (listTraveler (x:xs) n)

greaterCheckerInt :: [Int] -> Int -> Int -> [Int]
greaterCheckerInt [] _ _ = []
greaterCheckerInt (x:xs) n c
    | 0 > n = greaterCheckerInt (x:xs) (n+1) (c+1)
    | (listSize (x:xs) 0) <= c = (x:xs)
    | (greaterCheckerBool (x:xs) n c) == 1 = greaterCheckerInt (x:xs) (n+1) (c+1)
    | (greaterCheckerBool (x:xs) n c) == 2 = greaterCheckerInt (addElementAt (removeElementAt (x:xs) c 0) (getElementAt (x:xs) c) n 0) (n-1) (c-1)
    | (greaterCheckerBool (x:xs) n c) == 3 = greaterCheckerInt (x:xs) (n+1) (c+1)
    | otherwise = x:xs

greaterCheckerBool :: [Int] -> Int -> Int -> Int
greaterCheckerBool [] _ _ = 0
greaterCheckerBool (x:xs) n c
    | getElementAt (x:xs) n == (getElementAt (x:xs) c) = 3
    | getElementAt (x:xs) n > (getElementAt (x:xs) c) = 1
    | getElementAt (x:xs) n < (getElementAt (x:xs) c) = 2
    | otherwise = 4
    

main :: IO ()
main = do
    --prueba con valores positivos
    print (order_asc [900,1,27,3,4,8,5, 16]) 
