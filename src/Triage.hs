module Triage where
  
import Actions
import Bonus
  
import Actor
import Ailment
import Patient
import ActionDice
import Equipment
  
triage :: Actor -> Patient -> [Equipment] -> ActionDice -> ActionResult  
triage actor patient equipment actionDice = 
  let
    baseSkill = triageSkill actor
    specialised = elem (family patient) (specialisations actor) 
    equipmentBonus = foldl (\acc e -> acc + (triageBonus (equipmentBonuses e))) 0 equipment 
    result = getResult actionDice False specialised 
    success = result - equipmentBonus <= baseSkill
  in if success then Success else Failure
  