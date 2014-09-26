funcSquare :: Double -> Double --Declare function's type 
funcSquare x = x*x --Declare function

funcSum :: (Num a) => a -> a -> a --Any type
funcSum x y = x+y

funcFabonacci :: (Integral a) => a -> a
funcFabonacci 1 = 0 --Pattern Match
funcFabonacci 2 = 1
funcFabonacci n = funcFabonacci(n-1)+funcFabonacci(n-2) --Recursion

main = do
	print(funcSquare 0.123456789) --Call function
	print(funcSum 8 9)
	print(funcFabonacci 10)
