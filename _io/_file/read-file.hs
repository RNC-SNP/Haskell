import System.IO

{-
main = do
	handle <- openFile "read-file.hs" ReadMode
	contents <- hGetContents handle
	putStr contents
	hClose handle
-}

main = do
	withFile "read-file.hs" ReadMode (\handle -> do
		contents <- hGetContents handle
		putStr contents)