-- Exponenciacion, logaritmo natural, coseno, y otras funciones

-- Convierte un número entero (Int) a punto flotante (Float) usando solo funciones fundamentales.
intToFloat :: Int -> Float
intToFloat n = fromEnumToFloat (fromEnum n)

--  Convierte un número entero dado por fromEnum a Float sin usar fromIntegral. Solo usa suma y multiplicación.
fromEnumToFloat :: Int -> Float
fromEnumToFloat 0 = 0
fromEnumToFloat n
    | n > 0 = 1 + fromEnumToFloat (n-1)
    | otherwise = -1 + fromEnumToFloat (n+1)

-- Calcula el factorial de un número entero n (n!) de forma recursiva.
factorial :: Int -> Float
factorial 0 = 1
factorial n = intToFloat n * factorial (n-1)

-- Calcula la potencia de x elevado a n (x^n) de forma recursiva.
pot :: Float -> Int -> Float
pot x 0 = 1
pot x n = x * pot x (n-1)

-- Aproxima la función exponencial e^x usando N términos de la serie de Taylor.
expApprox :: Float -> Int -> Float
expApprox x n = sumaExp x n 0
    where
        sumaExp :: Float -> Int -> Int -> Float
        sumaExp x n i
            | i >= n = 0
            | otherwise = pot x i / factorial i + sumaExp x n (i+1)

-- Aproxima la función coseno cos(x) usando N términos de la serie de Taylor.
cosApprox :: Float -> Int -> Float
cosApprox x n = sumaCos x n 0
    where
        sumaCos :: Float -> Int -> Int -> Float
        sumaCos x n i
            | i >= n = 0
            | otherwise = pot (-1) i * pot x (2*i) / factorial (2*i) + sumaCos x n (i+1)

-- Aproxima la función ln(1+x) usando N términos de la serie.
ln1pApprox :: Float -> Int -> Float
ln1pApprox x n = sumaLn x n 1
    where
        sumaLn :: Float -> Int -> Int -> Float
        sumaLn x n i
            | i > n = 0
            | otherwise = pot (-1) (i+1) * pot x i / intToFloat i + sumaLn x n (i+1)



-- Ejecucion del codigo aqui
main :: IO ()
main = do
    putStrLn "Aproximación e^x con x=1.3 y N=5:"
    print (expApprox 1.3 5)
    putStrLn "Aproximación e^x con x=-0.7 y N=8:"
    print (expApprox (-0.7) 8)
    putStrLn "Aproximación cos(x) con x=0.5 y N=6:"
    print (cosApprox 0.5 6)
    putStrLn "Aproximación cos(x) con x=2.1 y N=10:"
    print (cosApprox 2.1 10)
    putStrLn "Aproximación ln(1+x) con x=0.3 y N=5:"
    print (ln1pApprox 0.3 5)
    putStrLn "Aproximación ln(1+x) con x=-0.6 y N=7:"
    print (ln1pApprox (-0.6) 7)
