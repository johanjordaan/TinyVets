module Actor.Actions.Expand where
  
import Actor.Actions
import Bonus
  
import Actor.Actor
import Ailment.Ailment
import Patient
import ActionDice
import Equipment
  
expand :: Actor -> Equipment -> [Equipment] -> ActionDice -> ActionResult  
expand actor newEquipment equipment actionDice = 
  let
    baseSkill = expansionSkill actor
    equipmentBonus = foldl (\acc e -> acc + (expansionBonus (equipmentBonuses e))) 0 equipment 
    expandPenalty = complexity newEquipment
    result = rollA actionDice
    success = result - equipmentBonus + expandPenalty <= baseSkill
  in if success then Success else Failure
  