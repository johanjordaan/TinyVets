module Care where
  
import Actions
import Bonus
  
import Actor
import Ailment
import Patient
import ActionDice
import Equipment
  
care :: Actor -> Patient -> [Equipment] -> ActionDice -> ActionResult  
care actor patient equipment actionDice = 
  let
    baseSkill = careSkill actor
    specialised = elem (family patient) (specialisations actor) 
    equipmentBonus = foldl (\acc e -> acc + (careBonus (equipmentBonuses e))) 0 equipment 
    result = getResult actionDice False specialised 
    success = result - equipmentBonus <= baseSkill
  in if success then Success else Failure
  