funcSquare :: Double -> Double --Declare function's type 
funcSquare x = x*x --Declare function
funcSum :: Num a => a -> a -> a
funcSum x y = x+y
main = do
	print (funcSquare 0.123456789) --Call function
	print (funcSum 8 9)
