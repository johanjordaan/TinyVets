module Supply where
  
data Supply = Supply {
  name::String,
  quality::Int
} deriving (Eq)
