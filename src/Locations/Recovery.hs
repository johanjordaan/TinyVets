module Locations.Recovery where
  
import Actor.Actor
import Card.Deck  
  
data Recovery = Recovery {
  patients::[PatientDeckCard]
}
