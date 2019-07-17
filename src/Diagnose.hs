module Diagnose where
  
import Actions
import Bonus
  
import Actor
import Ailment
import Patient
import ActionDice
import Equipment
  
diagnose :: Actor -> Ailment -> Patient -> [Equipment] -> ActionDice -> ActionResult  
diagnose actor ailment patient equipment actionDice = 
  let
    baseSkill = diagnosticSkill actor
    skilled = elem (category ailment) (ailmentSkills actor)
    specialised = elem (family patient) (specialisations actor) 
    equipmentBonus = foldl (\acc e -> acc + (diagnosticBonus (equipmentBonuses e))) 0 equipment 
    severityPenalty = severity ailment  
    result = getResult actionDice skilled specialised 
    success = result - equipmentBonus + severityPenalty <= baseSkill
  in if success then Success else Failure
  