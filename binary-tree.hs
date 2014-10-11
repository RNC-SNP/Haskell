data BinaryTree a = Empty | Node a (BinaryTree a) (BinaryTree a) deriving (Eq, Show)

insertValue :: (Ord a) => a -> BinaryTree a -> BinaryTree a
insertValue x Empty = Node x Empty Empty
insertValue x (Node a left right)
	| x == a = Node x left right
	| x < a = Node a (insertValue x left) right
	| x > a = Node a left (insertValue x right)

hasValue :: (Ord a) => a -> BinaryTree a -> Bool
hasValue x Empty = False
hasValue x (Node a left right)
	| x == a = True
	| x < a = hasValue x left
	| x > a = hasValue x right

main = do
	let nums = [8,6,4,1,7,3,5]
	let tree = foldr insertValue Empty nums
	print(show tree)