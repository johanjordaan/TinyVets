module Actor.Actor where

import Data.List

import Specialisation

import Patient
import Actor.Actions
import Ailment.Ailment
import Ailment.Category


data Role = Vet | Nurse | Medic | Student | Administrator
data ActionSkill = ActionSkill Action Int

data Actor = Actor {
  role::Role,
  name::String,
  diagnosticSkill::Int,
  triageSkill::Int,
  healingSkill::Int,
  careSkill::Int,
  aquisitionSkill::Int,
  studySkill::Int,
  expansionSkill::Int,
  specialisations::[Specialisation],
  ailmentCategorySkills::[Category]
}
     
createActor :: Role -> String -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> [Specialisation] -> [Category] -> Actor     
createActor role name d t h c a s e specialisations ailmentCategorySkills = 
  Actor role name d t h c a s e specialisations ailmentCategorySkills
  
isSpecialised :: Actor -> Patient -> Bool
isSpecialised actor patient =
  let 
    needed = requiredSpecialisations patient
    available = specialisations actor
  in isInfixOf needed available
  
isSkilled :: Actor -> Ailment -> Bool
isSkilled actor ailment = 
  let 
    needed = categories ailment 
    available = ailmentCategorySkills actor
  in isInfixOf needed available
  
  
  