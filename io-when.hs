import Control.Monad

main = do
	c <- getChar
	when (c /= ' ') $ do -- return () where the expression is False
		putChar c
		main