import System.Environment
import System.IO
import System.IO.Error

tryToReadFile :: IO ()
tryToReadFile = do (fileName:_) <- getArgs
                   contents <- readFile fileName
                   putStr contents

handleException :: IOError -> IO ()
handleException e
	| isDoesNotExistError e = putStrLn "The file doesn't exist!"
	| otherwise = ioError e

main = tryToReadFile `catch` handleException