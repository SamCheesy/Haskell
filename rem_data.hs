{-# LANGUAGE OverloadedStrings #-}


-- primer punto del primer punto 
-- eliminar elementos fuera del rango entre c y n

rem_data :: [Int] -> Int -> Int -> [Int]
rem_data [] _ _ = []
rem_data (x:xs) c n
    | x >= c && x <=n = x : remData xs c n
    | otherwise = rem_data xs c n

-- aqui se ejecuta el código
main :: IO ()
main = do    --aqui se agrega la lista, y luego los intervalos.
  print(rem_data [1,2,3,4,5,6,7,8,9,0] 4 6)
