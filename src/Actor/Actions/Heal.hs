module Actor.Actions.Heal where
  
import Actor.Actions
import Bonus

  
import Actor.Actor
import Ailment.Ailment
import Ailment.Severity
import Patient
import ActionDice
import Equipment
  
heal :: Actor -> Ailment -> Patient -> [Equipment] -> ActionDice -> ActionResult  
heal actor ailment patient equipment actionDice = 
  let
    baseSkill = healingSkill actor
    severityPenalty = penalty (severity ailment)
    equipmentBonus = foldl (\acc e -> acc + (healingBonus (equipmentBonuses e))) 0 equipment 
    result = getResult actionDice (isSkilled actor ailment) (isSpecialised actor patient) 
    success = result - equipmentBonus + severityPenalty <= baseSkill
  in if success then Success else Failure
  