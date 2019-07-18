module Actor.Actions.Study where
  
import Actor.Actions
import Bonus
  
import Actor.Actor
import Ailment.Ailment
import Patient
import ActionDice
import Equipment
import Skill

  
study :: Actor -> Skill -> [Equipment] -> ActionDice -> ActionResult  
study actor skill equipment actionDice = 
  let
    baseSkill = studySkill actor
    equipmentBonus = foldl (\acc e -> acc + (studyBonus (equipmentBonuses e))) 0 equipment     
    studyPenalty = difficulty skill
    result = rollA actionDice
    success = result - equipmentBonus + studyPenalty <= baseSkill
  in if success then Success else Failure
  