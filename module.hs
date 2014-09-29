import Data.List (nub, all) --Use a module
import Data.Char (isAlphaNum)
import qualified Data.Map as Map

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
