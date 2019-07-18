module Actor.Actions.Care where
  
import Actor.Actions
import Bonus
  
import Actor.Actor
import Ailment.Ailment
import Patient
import ActionDice
import Equipment
  
care :: Actor -> Patient -> [Equipment] -> ActionDice -> ActionResult  
care actor patient equipment actionDice = 
  let
    baseSkill = careSkill actor
    equipmentBonus = foldl (\acc e -> acc + (careBonus (equipmentBonuses e))) 0 equipment 
    result = getResult actionDice False (isSpecialised actor patient) 
    success = result - equipmentBonus <= baseSkill
  in if success then Success else Failure
  