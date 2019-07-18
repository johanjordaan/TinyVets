module Locations.WaitingRoom where
  
import Actor.Actor
import Card.Deck  
  
data WaitingRoom = WaitingRoom {
  patients::[PatientDeckCard]
}
