funcSquare :: Double -> Double
funcSquare x = x*x
funcSum :: Num a => a -> a -> a
funcSum x y = x+y
main = do
	print (funcSquare 0.123456789)
	print (funcSum 8 9)
