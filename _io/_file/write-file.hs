import System.IO
import Data.Char

main = do
	contents <- readFile "write-file.hs"
	writeFile "new-file.txt" (map toUpper contents)