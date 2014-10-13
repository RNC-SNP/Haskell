import Control.Monad

main = do
	c <- getChar
	when (c /= ' ') $ do -- return () where the bool-expression's value is False
		putChar c
		main