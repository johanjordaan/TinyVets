module Patient where

import Specialisation

data Patient = Patient {
  name::String,
  requiredSpecialisations::[Specialisation]
}
