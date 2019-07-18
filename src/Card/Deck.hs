module Card.Deck where
  
import Card.Card

data PatientDeckCard = 
  PatientCard
type PatientDeck = [PatientDeckCard]

data AilmentDeckCard = 
  AilmentCard
type AilmentDeck = [AilmentDeckCard]

data SupplyDeckCard = 
    SkillCard
  | SpecialisationCard
  | EquipmentCard
  | SupplyCard
type SupplyDeck = [SupplyDeckCard]

data EventDeckCard = 
  EventCard
type EventDeck = [EventDeckCard]



  
   

