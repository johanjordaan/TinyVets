module Actor.Actions.Triage where
  
import Actor.Actions
import Bonus
  
import Actor.Actor
import Ailment.Ailment
import Ailment.Severity
import Patient
import ActionDice
import Equipment
  
triage :: Actor -> Patient -> [Equipment] -> ActionDice -> ActionResult  
triage actor patient equipment actionDice = 
  let
    baseSkill = triageSkill actor
    equipmentBonus = foldl (\acc e -> acc + (triageBonus (equipmentBonuses e))) 0 equipment 
    result = getResult actionDice False (isSpecialised actor patient)  
    success = result - equipmentBonus <= baseSkill
  in if success then Success else Failure
  