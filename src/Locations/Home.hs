module Locations.Home where
  
import Actor.Actor
import Card.Deck  
  
data Home = Home {
  patients::[PatientDeckCard]
}
