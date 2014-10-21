import System.Environment
import System.Directory
import System.IO
import Data.List

-- Handle commands:
dispatch :: [(String, [String] -> IO ())]
dispatch = [("append", append)
           , ("view", view)
           , ("rename", rename)
           , ("remove", remove)
           ]

append :: [String] -> IO ()
append [fileName, contents] = appendFile fileName contents

view :: [String] -> IO ()
view [fileName] = do
	contents <- readFile fileName
	putStr contents

rename :: [String] -> IO ()
rename [fileName, newFileName] = renameFile fileName newFileName

remove :: [String] -> IO ()
remove [fileName] = removeFile fileName

main = do
	(command: args) <- getArgs -- Read command and arguments
	let (Just action) = lookup command dispatch
	action args -- Call 'action' dunction on the arguments to return IO action