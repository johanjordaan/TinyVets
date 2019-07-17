module Actor where

import Actions

data ActionSkill = ActionSkill Action Int

data Actor = Actor {
  role::String,
  name::String,
  diagnosticSkill::Int,
  triageSkill::Int,
  healingSkill::Int,
  careSkill::Int,
  aquisitionSkill::Int,
  studySkill::Int,
  expansionSkill::Int,
  specialisations::[String],
  ailmentSkills::[String]
}
     
createActor :: String -> String -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> [String] -> [String] -> Actor     
createActor role name d t h c a s e specialisations ailmentSkills = 
  Actor role name d t h c a s e specialisations ailmentSkills
  
  
  
  
  