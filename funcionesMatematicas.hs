{-|
    Aproximación de funciones matemáticas usando series numéricas en Haskell.
    Solo se utilizan funciones fundamentales (+, -, *, /, mod, toEnum, fromEnum, cos).
    Todas las funciones auxiliares necesarias se definen en este archivo.

    Incluye:
    - expApprox: Aproximación de la función exponencial e^x
    - cosApprox: Aproximación de la función coseno cos(x)
    - ln1pApprox: Aproximación de logaritmo natural ln(1+x)
    - factorial: Cálculo de factorial de un número entero (auxiliar)
    - pot: Cálculo de una potencia (auxiliar)
    - intToFloat: Conversión de Int a Float usando solo funciones fundamentales (auxiliar)
    - Ejemplo ejecutable que imprime resultados en consola.
-}

-- | Convierte un número entero (Int) a punto flotante (Float) usando solo funciones fundamentales.
-- Entrada: n (Int), Salida: n en Float
intToFloat :: Int -> Float
intToFloat n = fromEnumToFloat (fromEnum n)

-- | Convierte un número entero dado por fromEnum a Float sin usar fromIntegral. Solo usa suma y multiplicación.
-- Entrada: n (Int, via fromEnum), Salida: Float
fromEnumToFloat :: Int -> Float
fromEnumToFloat 0 = 0
fromEnumToFloat n
    | n > 0 = 1 + fromEnumToFloat (n-1)
    | otherwise = -1 + fromEnumToFloat (n+1)

-- | Calcula el factorial de un número entero n (n!) de forma recursiva.
-- Entrada: n (Int), Salida: n! (Float)
factorial :: Int -> Float
factorial 0 = 1
factorial n = intToFloat n * factorial (n-1)

-- | Calcula la potencia de x elevado a n (x^n) de forma recursiva.
-- Entrada: x (Float), n (Int), Salida: x^n (Float)
pot :: Float -> Int -> Float
pot x 0 = 1
pot x n = x * pot x (n-1)

-- | Aproxima la función exponencial e^x usando N términos de la serie de Taylor.
-- Entrada: x (Float), N (Int), Salida: Aproximación de e^x (Float)
expApprox :: Float -> Int -> Float
expApprox x n = sumaExp x n 0
    where
        sumaExp :: Float -> Int -> Int -> Float
        sumaExp x n i
            | i >= n = 0
            | otherwise = pot x i / factorial i + sumaExp x n (i+1)

-- | Aproxima la función coseno cos(x) usando N términos de la serie de Taylor.
-- Entrada: x (Float), N (Int), Salida: Aproximación de cos(x) (Float)
cosApprox :: Float -> Int -> Float
cosApprox x n = sumaCos x n 0
    where
        sumaCos :: Float -> Int -> Int -> Float
        sumaCos x n i
            | i >= n = 0
            | otherwise = pot (-1) i * pot x (2*i) / factorial (2*i) + sumaCos x n (i+1)

-- | Aproxima la función ln(1+x) usando N términos de la serie.
-- Entrada: x (Float), N (Int), Salida: Aproximación de ln(1+x) (Float)
ln1pApprox :: Float -> Int -> Float
ln1pApprox x n = sumaLn x n 1
    where
        sumaLn :: Float -> Int -> Int -> Float
        sumaLn x n i
            | i > n = 0
            | otherwise = pot (-1) (i+1) * pot x i / intToFloat i + sumaLn x n (i+1)

{-|
    Ejemplos de uso y resultados esperados (puedes probar en GHCi):

    -- Aproximación de e^x con x=1.3 y N=5
    expApprox 1.3 5    -- Resultado esperado ≈ 3.6694

    -- Aproximación de e^x con x=-0.7 y N=8
    expApprox (-0.7) 8 -- Resultado esperado ≈ 0.4966

    -- Aproximación de cos(x) con x=0.5 y N=6
    cosApprox 0.5 6    -- Resultado esperado ≈ 0.8776

    -- Aproximación de cos(x) con x=2.1 y N=10
    cosApprox 2.1 10   -- Resultado esperado ≈ -0.5048

    -- Aproximación de ln(1+x) con x=0.3 y N=5
    ln1pApprox 0.3 5   -- Resultado esperado ≈ 0.2622

    -- Aproximación de ln(1+x) con x=-0.6 y N=7
    ln1pApprox (-0.6) 7 -- Resultado esperado ≈ -0.9163
-}

-- | Programa principal que imprime los resultados de las aproximaciones con valores de ejemplo.
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
