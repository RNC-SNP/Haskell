import System.IO

main = do
	withFile "read-file-buffer.hs" ReadMode (\handle -> do
		hSetBuffering handle $ BlockBuffering (Just 1024)
		contents <- hGetContents handle
		putStr contents)