import Control.Monad

main = do
	ps <- forM [1,2,3,4] (\x -> do -- Just like 'for in' expression in other languages 
		putStrLn $ "Who is the people " ++ show x ++ "?"
		p <- getLine
		return p)
	putStrLn "The peoples :"
	mapM_ putStrLn ps