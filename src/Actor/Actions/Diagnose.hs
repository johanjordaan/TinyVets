module Actor.Actions.Diagnose where
  
import Actor.Actions
import Bonus
  
import Actor.Actor
import Ailment.Ailment
import Ailment.Severity
import Patient
import ActionDice
import Equipment
  
diagnose :: Actor -> Ailment -> Patient -> [Equipment] -> ActionDice -> ActionResult  
diagnose actor ailment patient equipment actionDice = 
  let
    baseSkill = diagnosticSkill actor
    severityPenalty = penalty (severity ailment)
    equipmentBonus = foldl (\acc e -> acc + (diagnosticBonus (equipmentBonuses e))) 0 equipment 
    result = getResult actionDice (isSkilled actor ailment) (isSpecialised actor patient)  
    success = result - equipmentBonus + severityPenalty <= baseSkill
  in if success then Success else Failure
  