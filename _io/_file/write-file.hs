import System.IO
import System.Directory
import Data.Char

main = do
	contents <- readFile "write-file.hs"
	writeFile "new-file.txt" (map toUpper contents)
	renameFile "new-file.txt" "new-file.txt.txt"
	removeFile "new-file.txt.txt"