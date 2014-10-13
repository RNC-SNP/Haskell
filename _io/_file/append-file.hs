import System.IO

main = do
	line <- getLine
	appendFile "append-file.hs" line
