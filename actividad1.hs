import qualified Data.Vector as V
import Data.List (map)

main :: IO ()
main = do
    contenido <- readFile "fnEst/valObs.txt" -- Lee el archivo de texto
    let temperaturas = V.fromList (map read (lines contenido)) -- Convierte las líneas en números
    let promedio = V.sum temperaturas / fromIntegral (V.length temperaturas)
    print promedio