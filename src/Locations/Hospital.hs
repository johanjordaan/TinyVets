module Locations.Hospital where
  
import Actor.Actor
import Card.Deck  
  
data Hostpital = Hospital {
  patients::[PatientDeckCard]
}
