module Ailment.Category where

import Supply

data Category = Category {
  name::String,
  requiredSupplies::[Supply]
} deriving (Eq)




