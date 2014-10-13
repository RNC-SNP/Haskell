data Gender = Male | Female | Other

-- Implements Eq TypeClass
instance Eq Gender where
	Male == Male = True
	Female == Female = True
	Other == Other = True
	_ == _ = False

-- Implements Show TypeClass
instance Show Gender where
	show Male = "Male"
	show Female = "Female"
	show Other = "Other"



-- Define a TypeClass
class YesNo a where
	yesno :: a -> Bool -- Define functions in this TypeClass

-- Implements YesNo TypeClass
instance YesNo Int where
	yesno 0 = False
	yesno _ = True

instance YesNo Bool where
	yesno = id -- A standard lib-func which takes a param and returns the same thing.

instance YesNo (Maybe a) where
	yesno (Just _) = True
	yesno Nothing = False



main = do
	print(Male == Female)
	print(Male /= Female)
	print(show Male)

	--print(yesno 1)
	print(yesno False)
	print(yesno $ Just "Rinc")