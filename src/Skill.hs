module Skill where
  
import Bonus

data Skill = Skill {
  name::String,
  difficulty::Int,
  skillBonuses::Bonus
}




