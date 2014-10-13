import Data.List (nub, all) --Use a built-in module
import Data.Char (isAlphaNum)
import qualified Data.Map as Map
import qualified Geometry.Sphere as Sphere --Use a custom module
import qualified Geometry.Cuboid as Cuboid

funcUniques :: (Eq a) => [a] -> Int
funcUniques = length . nub --'nub' is a function defined in the module 'Data.List'.

funcCheckUsername :: [Char] -> Bool
funcCheckUsername s = all isAlphaNum s

funcFindKey :: (Eq k) => [(k,v)] -> k -> v
funcFindKey xs key = snd . head . filter (\(k,v) -> k == key) $ xs

main = do
	print(funcUniques [1,2,3,2,4,3,1,5])
	print(funcCheckUsername "RincLiu%19890121")
	print(funcFindKey [("Andy",21),("Bob",15),("Chris",19),("Denny",26)] "Chris")
	print(Sphere.area 1.23456789)
	print(Sphere.volume 1.23456789)
	print(Cuboid.area 1.23 4.56 7.89)
	print(Cuboid.volume 1.23 4.56 7.89)
