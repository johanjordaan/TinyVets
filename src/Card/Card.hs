module Card.Card where

import Patient
import Ailment.Ailment
import Equipment
import Supply
import Specialisation
import Skill
import Event

data SkillCard = SkillCard {
  skill::Skill
} 

data SpecialisationCard = SpecialisationCard {
  specialisation::Specialisation
} 

data SupplyCard = SupplyCard {
  supply::Supply
} 

data EventCard = EventCard {
  event::Event
} 

data EquipmentCard = EquipmentCard {
  buildTokens::Int,
  operational::Bool
} 

data AilmentCard = AilmentCard {
  ailment::Ailment,
  diagnosed::Bool,
  healTokens::Int,
  supplies::[SupplyCard]
} 

data PatientCard = PatientCard {
  patient::Patient,
  emergencyTokens::Int,
  recoveryTokens::Int,
  ailments::[AilmentCard]
} 


