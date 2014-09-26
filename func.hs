funcSquare :: Double -> Double --Define function's type 
funcSquare x = x*x --Define function

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
funcHead (x:_) = x --'x' means the 1st element

funcLength :: (Num b) => [a] -> b
funcLength [] = 0
funcLength (_:xs) = 1 + funcLength xs --'xs' means all the elements except the 1st one

funcCompare :: (Ord a) => a -> a -> Ordering
a `funcCompare` b --Define infix function
	| a > b = GT --Use '|'
	| a == b = EQ
	| otherwise = LT --Use 'otherwise'

funcBMI :: (RealFloat a) => a -> a -> String
funcBMI weight height
	| bmi <= bmi_thin = "Thin."
	| bmi >= bmi_fat = "Fat."
	| otherwise = "Normal."
	where bmi = weight/height^2 --Use 'where'
	      (bmi_thin,bmi_fat) = (18.5,30.0)

funcMaximum :: (Ord a) => [a] -> a
funcMaximum [] = error "Empty list!"
funcMaximum [x] = x
funcMaximum (x:xs)
	| x > maxInTail = x
	| otherwise = maxInTail
	where maxInTail = funcMaximum xs --Recursion in 'where'

funcDescribeList :: [a] -> String
funcDescribeList xs = "The list is " ++ case xs of [] -> "empty."
                                                   [x] -> "singleton."
                                                   xs -> "long."

funcQuickSort :: (Ord a) => [a] -> [a]
funcQuickSort [] = []
funcQuickSort (x:xs) =
	let smallerSorted = funcQuickSort [a | a <- xs, a <= x] --Use 'let in'
	    biggerSorted = funcQuickSort [a | a <- xs, a > x]
	in smallerSorted ++ [x] ++ biggerSorted

main = do
	print(funcSquare 0.123456789) --Call function
	print(funcSum 8 9)
	print(funcFabonacci 10)
	print(funcAddTuple (1,2) (0.1,0.2))
	print(funcHead [1,2,3,4,5])
	print(funcLength[1,2,3,4,5])
	print(8 `funcCompare` 9)
	print(funcBMI 64 1.61)
	print(funcMaximum [3,1,4,5,2])
	print(funcDescribeList [1,2,3,4,5])
	print(funcQuickSort [3,1,5,4,2])