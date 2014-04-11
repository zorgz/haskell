data PropertyType = Int | String | Link | PLink | Binary | BigInt

descriptionOf :: PropertyType -> String
descriptionOf ptype =
	case ptype of
		Int -> "Integer"
		String -> "String"
		Link -> "Object llink"
		PLink -> "Property link"
		

data Property = Property String PropertyType


instance Show Property where 
		show (Property a b) = a ++ ":" ++ (descriptionOf b)


data User = User { fName :: String
			, sName :: String
			, email :: String
			}
			deriving Show
			
changeEmail :: User -> String -> User
changeEmail u newEmail  = u {email = newEmail}
