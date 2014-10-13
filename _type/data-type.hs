import qualified Data.Map as Map

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


-- Use type params while defining data type
data PersonX typeA typeB = PersonX { nameX :: typeA
	, ageX :: typeB
} deriving (Show)

tellPersonXAge :: (Show a) => PersonX String a -> String
tellPersonXAge (PersonX {nameX = nx, ageX = ax}) = nx ++ "'s age: " ++ show ax


data Gender = Male | Female | Other deriving (Eq, Show, Read, Bounded, Enum)


-- Define type
type PhoneBook = Map.Map String String
lookupPhone :: String -> PhoneBook -> String
lookupPhone name book =
	case Map.lookup name book of
		Nothing -> "Cannot find " ++ show name ++ "'s phone number!"
		Just number -> show name ++ "'s phone number: " ++ show number

-- Use custom type
book :: PhoneBook
book = Map.fromList
	[("Andy", "12345678901")
	,("Bob", "12345678902")
	,("Chris", "12345678903")
	,("Dennis", "12345678904")
	,("Emma", "12345678905")
	,("Frank", "12345678906")
	,("George", "12345678907")
	,("Henry", "12345678908")
	,("Ivy", "12345678909")
	]


main = do
	print(surface (Circle (Point 0 0) 1.23456789))
	print(surface (Retangle (Point (-1.0) (-2.0)) (Point 1.0 2.0)))

	print(read "Person {name = \"Rinc\", age = 25}" :: Person) -- Use read
	print(tellPersonAge (Person {name = "Rinc", age = 25}))
	print(tellPersonXAge (PersonX {nameX = "Andy", ageX = "12"})) -- String type param
	print(tellPersonXAge (PersonX {nameX = "Bob", ageX = '9'})) -- Char type param
	print(tellPersonXAge (PersonX {nameX = "Chris", ageX = 35})) -- Int type param
	print(tellPersonXAge (PersonX {nameX = "Dennis", ageX = 19.0})) -- Float type param

	print(Male == Female)
	print(show Male)
	print(read "Other" :: Gender)
	print([minBound .. maxBound] :: [Gender])

	print(lookupPhone "Rinc" book)
	print(lookupPhone "Emma" book)