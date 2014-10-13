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

main = do
	print(Male == Female)
	print(show Male)