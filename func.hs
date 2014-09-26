funcSquare :: Double -> Double --Declare function's type 
funcSquare x = x*x --Declare function

funcSum :: (Num a) => a -> a -> a --Any type
funcSum x y = x+y

funcFactorial :: (Integral a) => a -> a
funcFactorial 0 = 1 --Pattern Match
funcFactorial n = n*funcFactorial(n-1) --Recursion

main = do
	print(funcSquare 0.123456789) --Call function
	print(funcSum 8 9)
	print(funcFactorial 321)
