data Gender = Male | Female | Unknown
			 deriving Show

data User = Local String Gender
			| Remote String Gender String
		 	deriving Show

userGender :: User -> Gender
userGender (Local _ gender) = gender
userGender (Remote _ gender _) = gender
