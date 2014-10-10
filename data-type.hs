-- Define data type
data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float | Retangle Point Point deriving (Show)

-- Use custom data type in function
surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Retangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)


data Person = Person { name :: String
	, age :: Int
} deriving (Eq, Show, Read)

tellPersonAge :: Person -> String
tellPersonAge (Person {name = n, age = a}) = n ++ "'s age: " ++ show a

-- read "Person {name = \"Rinc\", age = 25}" :: Person


-- Use type params while defining data type
data PersonX typeA typeB = PersonX { nameX :: typeA
	, ageX :: typeB
} deriving (Eq, Show, Read)

tellPersonXAge :: (Show a) => PersonX String a -> String
tellPersonXAge (PersonX {nameX = nx, ageX = ax}) = nx ++ "'s age: " ++ show ax


main = do
	print(surface (Circle (Point 0 0) 1.23456789))
	print(surface (Retangle (Point (-1.0) (-2.0)) (Point 1.0 2.0)))
	print(tellPersonAge (Person {name = "Rinc", age = 25}))
	print(tellPersonXAge (PersonX {nameX = "Andy", ageX = "12"})) -- String type param
	print(tellPersonXAge (PersonX {nameX = "Bob", ageX = '9'})) -- Char type param
	print(tellPersonXAge (PersonX {nameX = "Chris", ageX = 35})) -- Int type param
	print(tellPersonXAge (PersonX {nameX = "Dennis", ageX = 19.0})) -- Float type param