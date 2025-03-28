import Statistics.Sample(variance,mean,stdDev)
import qualified Data.Vector as V
import Data.List (map)
main :: IO ()
main = do
    let datos = [20, 22, 18, 23, 25, 19, 21] -- Lista de datos
    contenido <- readFile "fnEst/valObs.txt" -- Lee el archivo de texto
    let temperaturas = V.fromList (map read (lines contenido)) -- Convierte las líneas en números
    let varianza = variance temperaturas -- Calcular varianza
    let desviacion = stdDev temperaturas -- Calcular desviación estándar
    let media = mean temperaturas -- Calcular media
    print ("Varianza: " ++ show varianza)
    print ("Desviación Estándar: " ++ show desviacion)
    print ("Media: " ++ show media)