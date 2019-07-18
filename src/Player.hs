module Player where
  
import Actor.Actor
import Card.Deck  
  
data Player = Player {
  name::String,
  actor::Actor,
  hand::[SupplyDeckCard]
}
