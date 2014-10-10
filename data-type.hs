-- Define data type
data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float | Retangle Point Point deriving (Show)

data Person = Person { name :: String
	, gender :: String
	, age :: Int
	, email :: String
} deriving (Show)
-- Usage: Person {name = "Rinc", gender = "male", age = "25", email = "i@RincLiu.com"}

-- Use type params while defining data type
data PersonX typeA typeB typeC typeD= PersonX { nameX :: typeA
	, genderX :: typeB
	, ageX :: typeC
	, emailX :: typeD
} deriving (Show)

-- Use custom data type in function
surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Retangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

main = do
	print(surface (Circle (Point 0 0) 1.23456789))
	print(surface (Retangle (Point (-1.0) (-2.0)) (Point 1.0 2.0)))
