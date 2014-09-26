funcSquare :: Double -> Double --Declare function's type 
funcSquare x = x*x --Declare function

funcSum :: (Num a) => a -> a -> a --Typeclass, Any type
funcSum x y = x+y

funcFabonacci :: (Integral a) => a -> a
funcFabonacci 1 = 0 --Pattern Match
funcFabonacci 2 = 1
funcFabonacci n = funcFabonacci(n-1)+funcFabonacci(n-2) --Recursion

funcAddTuple :: (Num a) => (a,a) -> (a,a) -> (a,a) --Use tuple in function
funcAddTuple a b = (fst a + fst b, snd a + snd b) --'fst' & 'snd' has higher priority than '+'

funcHead :: [a] -> a
funcHead [] = error "Cannot call this function on empty list!" --Use error
funcHead (x:_) = x --'x' is the 1st element

main = do
	print(funcSquare 0.123456789) --Call function
	print(funcSum 8 9)
	print(funcFabonacci 10)
	print(funcAddTuple (1,2) (0.1,0.2))
	print(funcHead [1,2,3,4,5])
