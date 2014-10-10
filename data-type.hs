-- Define data type
data Shape = Circle Float Float Float | Retangle Float Float Float Float

-- Use custom data type in function
surface :: Shape -> Float
surface (Circle _ _ r) = pi * r ^ 2
surface (Retangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

main = do
	print(surface (Circle 0 0 1.23456789))
	print(surface (Retangle (-1.0) (-2.0) 1.0 2.0))
