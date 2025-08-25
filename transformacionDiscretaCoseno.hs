--Transformacion discreta del coseno 

-- Conversión manual de Int a Float
enteroAFlotante :: Int -> Float
enteroAFlotante n = convertir n 0
  where
    convertir 0 acc = acc
    convertir m acc
        | m > 0     = convertir (m-1) (acc + 1)
        | otherwise = convertir (m+1) (acc - 1)

-- Raíz cuadrada por aproximación incremental
raizCuadrada :: Float -> Float
raizCuadrada x = aproximar 0.0
  where
    paso = 0.0001
    aproximar y
        | y * y > x = y
        | otherwise = aproximar (y + paso)

-- Constante pi definida manualmente
piValor :: Float
piValor = 3.141592653589793

-- Longitud de lista
longitudLista :: [a] -> Int
longitudLista [] = 0
longitudLista (_:xs) = 1 + longitudLista xs

-- Obtener elemento en índice
obtenerElemento :: [a] -> Int -> a
obtenerElemento (x:_) 0 = x
obtenerElemento (_:xs) i = obtenerElemento xs (i-1)

-- Factor de normalización
factorNormalizacion :: Int -> Int -> Float
factorNormalizacion k n
    | k == 0    = raizCuadrada (1 / enteroAFlotante n)
    | otherwise = raizCuadrada (2 / enteroAFlotante n)

-- Sumatoria de la fórmula DCT
calcularSumatoria :: [Float] -> Int -> Int -> Int -> Float
calcularSumatoria xs k n i
    | i == n    = 0
    | otherwise = (obtenerElemento xs i) * cos (((enteroAFlotante i + 0.5) * piValor * enteroAFlotante k) / enteroAFlotante n)
                  + calcularSumatoria xs k n (i+1)

-- Calcular coeficientes X(k)
calcularCoeficientes :: [Float] -> Int -> Int -> [Float]
calcularCoeficientes xs k n
    | k == n    = []
    | otherwise = xk : calcularCoeficientes xs (k+1) n
  where
    xk = factorNormalizacion k n * calcularSumatoria xs k n 0

-- Transformada Discreta del Coseno
transformadaCoseno :: [Float] -> [Float]
transformadaCoseno xs = calcularCoeficientes xs 0 (longitudLista xs)

-- Ejecucion de codigo aqui
main :: IO ()
main = do
    let datos = [1,2,3,4,5,6,7,8,9,10] :: [Float]
    let resultado = transformadaCoseno datos
    print resultado
